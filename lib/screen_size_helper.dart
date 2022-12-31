import 'package:flutter/material.dart';

enum ScreenType { mobile, desktop }

extension ScreenSizeHelper on BuildContext {
  ScreenType screenType() {
    final width = MediaQuery.of(this).size.width;
    return width > 1000 ? ScreenType.desktop : ScreenType.mobile;
  }
}
