import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class DayButton extends StatefulWidget {
  final VoidCallback onPressed;
  final DateTime date;

  const DayButton({
    Key key,
    @required this.date,
    this.onPressed,
  }) : super(key: key);

  @override
  _DayButtonState createState() => _DayButtonState();
}

class _DayButtonState extends State<DayButton> {
  @override
  Widget build(BuildContext context) {
    final String dayString =
        DateFormat('EEEE').format(widget.date).substring(0, 3);

    return FlatButton(
      onPressed: widget.onPressed,
      color: Theme.of(context).primaryColorDark,
      textColor: Theme.of(context).accentTextTheme.bodyText2.color,
      disabledColor: Theme.of(context).accentIconTheme.color,
      disabledTextColor: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Text(
            widget.date.day.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Text(dayString.toUpperCase()),
        ],
      ),
    );
  }
}
