import 'package:intl/intl.dart';
String formateDate(dateTimeString) {

  DateTime dateTime = DateTime.parse(dateTimeString);


  String day = DateFormat('dd').format(dateTime);
  String month = DateFormat('MM').format(dateTime);
  String time = DateFormat('HH:mm').format(dateTime);
  String year = DateFormat('yyyy').format(dateTime);

  String result = "$year/$month/$day $time";
  
  return result;
}
