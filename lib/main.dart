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
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final size = constraints.maxWidth;
                      final sideSize = size * 0.5;
                      return Container(
                        width: sideSize,
                        height: sideSize,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            'Square Box',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      );
                    },
                  ),
                  // Expanded(
                  //   child:
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
