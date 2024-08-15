import 'package:ehsan/Features/Auth/data/models/loginModel.dart';
import 'package:ehsan/Features/Auth/domain/entites/loginEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/core/utils/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sqflite/sqflite.dart';

import 'core/utils/functions/setup_service_locator.dart';

String token = "";
String name = "";
String grade = "";
String section = "";
void main() async {
  // await Hive.initFlutter();
  // Hive.registerAdapter(LoginEntityAdapter());
//
  setupServiceLocator();
  // var box = await Hive.openBox<Data>(kLoginBox);
  WidgetsFlutterBinding.ensureInitialized();
  await initDatabase();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  token = await prefs.getString('token')!;
  name = await prefs.getString('name')!;
  grade = await prefs.getString('grade')!;
  section = await prefs.getString('section')!;
  // prefs.clear();
  // print(await prefs.getString('token'));
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
