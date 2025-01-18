import 'package:flutter/material.dart';

/// 練習自定義文字組件，如果文字不會變化可以直接使用Widget回傳
/// text: 要顯示的文字
/// returns: 顯示文字的組件
class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      "Hello World!",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
