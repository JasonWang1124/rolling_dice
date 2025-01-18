import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

/// 自定義縣性組件
/// StatelessWidget會自動在背後運行
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 156, 7, 7),
            Color.fromARGB(230, 156, 7, 7),
            Color.fromARGB(205, 156, 7, 7),
            Color.fromARGB(185, 156, 7, 7),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
