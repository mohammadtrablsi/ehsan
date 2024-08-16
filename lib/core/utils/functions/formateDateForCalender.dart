DateTime formateDateForCalender(String dateString) {
  // Split the string by the delimiter '-'
  List<String> parts = dateString.split('-');

  // Extract the year, month, and day parts
  int year = int.parse(parts[0]);
  int month = int.parse(parts[1].padLeft(2, '0')); // Ensure month is two digits
  int day = int.parse(parts[2].padLeft(2, '0')); // Ensure day is two digits

  // Return the parsed date as a UTC DateTime
  return DateTime.utc(year, month, day);
}
