import 'package:mavha_flutter_challenge/models/event.dart';

class EventsService {
  EventsService._internal();

  static final EventsService instance = EventsService._internal();

  List<Event> _events = [
    Event(
      title: 'Morning run in the park',
      description: 'Mon - Fri',
      dateTime: DateTime.now(),
    ),
    Event(
      title: 'Skype meeting with the NY contractor',
      description: 'Delivery overview',
      dateTime: DateTime.now().add(Duration(hours: 2)),
    ),
    Event(
      title: 'Meeting with the design team',
      description: 'Timeline of visualization project objectives',
      dateTime: DateTime.now().add(Duration(hours: 3)),
    ),
    Event(
      title: 'Weekly meeting with the team',
      description: 'On the list of issues',
      dateTime: DateTime.now().add(Duration(hours: 5)),
    ),
  ];

  Future<List<Event>> fetchEvents() async {
    await Future.delayed(Duration(seconds: 1));
    return _events;
  }
}
