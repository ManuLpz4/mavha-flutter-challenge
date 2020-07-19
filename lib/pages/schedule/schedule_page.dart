import 'package:flutter/material.dart';

import 'package:mavha_flutter_challenge/pages/schedule/widgets/events_list_view.dart';
import 'package:mavha_flutter_challenge/widgets/custom_shape_border.dart';
import 'package:mavha_flutter_challenge/widgets/day_button.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const CustomShapeBorder(),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Schedule'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null,
            icon: const Icon(Icons.event_note),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DayButton(date: DateTime.now()),
                Text(
                  'Today\'s list',
                  style: Theme.of(context).accentTextTheme.headline6,
                ),
                Text(
                  '4 tasks',
                  style: Theme.of(context).accentTextTheme.headline6.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        child: const Icon(Icons.add),
      ),
      body: const EventsListView(),
    );
  }
}
