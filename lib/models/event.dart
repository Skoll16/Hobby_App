import 'package:flutter/foundation.dart';

class Event {
  final String id;
  final String title;
  final String location;
  final DateTime date;
  final String phoneNumber;

  Event({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.date,
    @required this.phoneNumber
    });
}