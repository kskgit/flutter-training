import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final size = constraints.maxWidth;
              final sideSize = size * 0.5;
              return SizedBox(
                width: sideSize,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Placeholder(
                      fallbackHeight: sideSize,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TemperatureDisplayText(
                          textColor: TextStyle(color: Colors.red),
                        ),
                        TemperatureDisplayText(
                          textColor: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Close',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            'Reload',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class TemperatureDisplayText extends StatelessWidget {
  const TemperatureDisplayText({
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
