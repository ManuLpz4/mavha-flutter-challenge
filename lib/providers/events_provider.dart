import 'package:flutter/material.dart';

import 'package:mavha_flutter_challenge/models/event.dart';
import 'package:mavha_flutter_challenge/services/events_service.dart';

class EventsProvider with ChangeNotifier {
  List<Event> _events;

  EventsProvider() {
    _fetchEvents();
  }

  List<Event> get events => _events;

  Future<void> _fetchEvents() async {
    try {
      _events = await EventsService.instance.fetchEvents();
      notifyListeners();
    } catch (e) {
      debugPrint(e);
    }
  }
}
