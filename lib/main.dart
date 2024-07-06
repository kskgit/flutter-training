import 'package:flutter/cupertino.dart';
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
                  Container(
                    width: 100, // 任意の固定幅
                    height: 100,
                    child: const FractionallySizedBox(
                      widthFactor: 0.5,
                      heightFactor: 0.5,
                      alignment: FractionalOffset.center,
                      child: Placeholder(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
