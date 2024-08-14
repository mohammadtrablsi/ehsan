class EventsEntity {
  final String? id;
  final String? name;
  final String? place;
  final String? date;
  final String? photo;
  final String? description;

  EventsEntity(
      {required this.name,
      required this.place,
      required this.date,
      required this.photo,
      required this.description,
      required this.id});
}
