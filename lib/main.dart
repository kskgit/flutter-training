import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final size = constraints.maxWidth;
                      final sideSize = size * 0.5;
                      return SizedBox(
                        width: sideSize,
                        height: sideSize,
                        child: const Column(
                          children: [
                            Expanded(
                              // TODO 縦幅を横幅に揃える
                              child: Placeholder(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TemperatureDisplay(
                                  textColor: TextStyle(color: Colors.red),
                                ),
                                TemperatureDisplay(
                                  textColor: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TemperatureDisplay extends StatelessWidget {
  const TemperatureDisplay({
    required this.textColor,
    super.key,
  });
  final TextStyle textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Text(
        '** ℃',
        style: textColor,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextStyle>('textColor', textColor));
  }
}
