import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:switch_app_bar/switch_app_bar_test_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const SwitchAppBarTestPage());
}
