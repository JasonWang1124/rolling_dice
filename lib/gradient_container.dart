import 'package:flutter/material.dart';
import 'package:rolling_dice/dice_roller.dart';

/// 自定義組件
/// StatefulWidget會自動在背後運行，這個組件裡面有可能會變化的內容
/// 因此選擇使用StatefulWidget
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  const GradientContainer.red({super.key})
      : colors = const [
          Color.fromARGB(255, 156, 7, 7),
          Color.fromARGB(230, 156, 7, 7),
          Color.fromARGB(205, 156, 7, 7),
          Color.fromARGB(185, 156, 7, 7),
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
