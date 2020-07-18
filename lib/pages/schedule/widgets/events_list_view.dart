import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:mavha_flutter_challenge/pages/schedule/widgets/event_list_tile.dart';
import 'package:mavha_flutter_challenge/providers/events_provider.dart';
import 'package:mavha_flutter_challenge/utils/constants.dart';

class EventsListView extends StatelessWidget {
  const EventsListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<EventsProvider>(
      builder: (_, EventsProvider eventsProvider, __) {
        if (eventsProvider.events == null) {
          return Center(
            child: isApple
                ? const CupertinoActivityIndicator()
                : const CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          itemCount: eventsProvider.events.length,
          itemBuilder: (_, int i) {
            return EventListTile(eventsProvider.events[i]);
          },
        );
      },
    );
  }
}
