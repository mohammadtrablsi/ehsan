DateTime formateDateForCalender(dateString) {

  // Parse the string to a DateTime object
  DateTime parsedDate = DateTime.parse(dateString);

  // Convert the parsed date to a UTC DateTime
  DateTime utcDate =
      DateTime.utc(parsedDate.year, parsedDate.month, parsedDate.day);

  return utcDate; // Outputs: 2024-08-01 00:00:00.000Z
}
