import 'package:flutter/material.dart';

import 'package:mavha_flutter_challenge/widgets/day_button.dart';

class DaysListView extends StatefulWidget {
  const DaysListView({Key key}) : super(key: key);

  @override
  _DaysListViewState createState() => _DaysListViewState();
}

class _DaysListViewState extends State<DaysListView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 119,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (_, int i) {
          return DayButton(
            date: DateTime.now().add(Duration(days: i)),
            onPressed: _currentIndex != i ? () => _changeDate(i) : null,
          );
        },
      ),
    );
  }

  void _changeDate(int i) {
    setState(() {
      _currentIndex = i;
    });
  }
}
