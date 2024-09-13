import 'dart:math';

import 'package:flutter/material.dart';
import 'package:switch_app_bar/widgets/switch_app_bar_widget.dart';

class SwitchAppBarTestPage extends StatelessWidget {
  const SwitchAppBarTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SwitchAppBarWidget(
          placeholderAppBar: Container(
            width: double.infinity,
            height: 3 * kToolbarHeight,
            color: Colors.green,
            child: const SafeArea(
              child: Center(
                child: Text(
                  'This is placeholder app bar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          overlayAppBar: Container(
            width: double.infinity,
            height: 2 * kToolbarHeight,
            color: Colors.red,
            child: const SafeArea(
              child: Center(
                child: Text(
                  'This is overlay app bar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          children: List.generate(
            20,
            (_) {
              return Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
