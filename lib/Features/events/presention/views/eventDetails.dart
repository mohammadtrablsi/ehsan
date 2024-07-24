import 'package:ehsan/Features/events/presention/views/widgets/eventDetailsBody.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key, required this.indexForTag});
  final int indexForTag;

  @override
  Widget build(BuildContext context) {
    return EventDetailsBody(
      indexForTag: indexForTag,
    );
  }
}
