import 'dart:math';

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:mavha_flutter_challenge/models/event.dart';

class EventListTile extends StatefulWidget {
  final Event _event;

  const EventListTile([this._event]);

  @override
  _EventListTileState createState() => _EventListTileState();
}

class _EventListTileState extends State<EventListTile> {
  bool enabledReminder = Random().nextBool();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Container(
            width: 64,
            alignment: Alignment.center,
            child: Text(
              DateFormat('H:00').format(widget._event.dateTime),
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Theme.of(context).textTheme.caption.color,
                  ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  VerticalDivider(
                    width: 0,
                    color: Theme.of(context).disabledColor,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              if (DateTime.now().hour == widget._event.dateTime.hour)
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
            ],
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: FlatButton(
                onPressed: () => null,
                color: Theme.of(context).dividerColor,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            widget._event.title,
                            softWrap: true,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        _reminderButton(context),
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).disabledColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            widget._event.description,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(
                                  color:
                                      Theme.of(context).textTheme.caption.color,
                                ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Theme.of(context).disabledColor,
                          ),
                          onPressed: () => null,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _reminderButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        enabledReminder ? Icons.notifications_active : Icons.notifications_none,
        color: enabledReminder
            ? Theme.of(context).primaryColor
            : Theme.of(context).disabledColor,
      ),
      onPressed: () {
        setState(() {
          enabledReminder = !enabledReminder;
        });
        if (enabledReminder) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(context).primaryColor,
              content: const Text('You will not miss it!'),
            ),
          );
        }
      },
    );
  }
}
