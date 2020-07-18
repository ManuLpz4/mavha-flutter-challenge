import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mavha_flutter_challenge/pages/my_list/my_list_page.dart';
import 'package:mavha_flutter_challenge/pages/schedule/schedule_page.dart';
import 'package:mavha_flutter_challenge/utils/constants.dart';

const String initialRoute = RouteName.initial_route;

Route<Widget> onGenerateRoute(RouteSettings settings) {
  return CupertinoPageRoute<Widget>(
    settings: settings,
    builder: (_) {
      switch (settings.name) {
        case RouteName.initial_route:
          return MyListPage();
        case RouteName.schedule:
          return SchedulePage();
        default:
          return null;
      }
    },
  );
}
