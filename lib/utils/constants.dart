import 'dart:io';

import 'package:flutter/foundation.dart';

bool get isWeb => kIsWeb;
bool get isMobile => !isWeb && (Platform.isIOS || Platform.isAndroid);
bool get isDesktop =>
    !isWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);
bool get isApple => !isWeb && (Platform.isIOS || Platform.isMacOS);
bool get isGoogle => !isWeb && (Platform.isAndroid || Platform.isFuchsia);

class RouteName {
  static const String initial_route = '/';
  static const String schedule = '/schedule';
}
