import 'package:ehsan/Features/Auth/data/models/loginModel.dart';
import 'package:ehsan/Features/Auth/domain/entites/loginEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/core/utils/simple_bloc_observer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sqflite/sqflite.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/utils/functions/setup_service_locator.dart';

String? tokenForFirBase = "";
// String name = "";
// String grade = "";
// String section = "";
SharedPreferences? prefs;
void subscribeToTopic() {
  FirebaseMessaging.instance.subscribeToTopic("7").then((_) {
    print("تم الاشتراك في الموضوع بنجاح!");
  }).catchError((error) {
    print("فشل الاشتراك في الموضوع: $error");
  });
}

void main() async {
  // await Hive.initFlutter();
  // Hive.registerAdapter(LoginEntityAdapter());
//
  setupServiceLocator();
  // var box = await Hive.openBox<Data>(kLoginBox);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initDatabase();
  prefs = await SharedPreferences.getInstance();
  // Handle foreground messages
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Received a foreground message: ${message.messageId}');
    print(message.data);
    // Handle the message and show a notification
  });
  FirebaseMessaging.instance
      .getToken()
      .then((value) => tokenForFirBase=value);
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('A new onMessageOpenedApp event was published!');
    print(message.data);
    // Handle the message when the app is opened from a background state
  });
  FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
    if (message != null) {
      print('A message triggered the app launch: ${message.messageId}');
      print(message.data);
      // message.data.forEach((key, value) {
      //   print('$key: $value');
      // });
      // } else {
      //   print('No data found in the message.');
      // }
      // Handle the message when the app is opened from a terminated state
    }
  });
  subscribeToTopic();

  // token = await prefs.getString('token')!;
  // name = await prefs.getString('name')!;
  // grade = await prefs.getString('grade')!;
  // section = await prefs.getString('section')!;
  // prefs.clear();
  // print(await prefs!.getString('token'));
  //  await Hive.openBox<LoginEntity>(kLoginBox);
  // for (var key in box.keys) {
  //   final value = box.get(key);
  //   print('Key: $key, Value: ${value?.fatherName}');
  // }
  // if (box.isEmpty) {
  //   print("boxIsEmpty");
  // }

  Bloc.observer = SimpleBlocObserver();
  runApp(const PowerOfTask());
}

Future<void> initDatabase() async {
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'demo.db');

  // open the database
  Database database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
    await db.execute(
        'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
  });
}

class PowerOfTask extends StatelessWidget {
  const PowerOfTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
