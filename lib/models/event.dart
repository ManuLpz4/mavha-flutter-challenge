import 'package:flutter/material.dart';

class Event {
  final String title;
  final String description;
  final DateTime dateTime;

  const Event({
    @required this.title,
    @required this.description,
    @required this.dateTime,
  });
}
