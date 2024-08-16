Map<String, String?> formateDateForExamPage(String dateString) {
  // Split the dateString into parts using spaces
  List<String> parts = dateString.split(' ');

  // Assuming the date format is "day month year"
  String? day = parts.length > 0 ? parts[0] : null;
  String? month = parts.length > 1 ? parts[1] : null;
  String? year = parts.length > 2 ? parts[2] : null;

  // Return the parts in a Map
  return {
    'day': day,
    'month': month,
    'year': year,
  };
}
