import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

/// 有底線的命名表示私有方法
class _DiceRollerState extends State<DiceRoller> {
  // 這邊使用變數，因此這個組件就不能再宣告成const，加速渲染
  int randomInt = 1;

  void rollDice() {
    setState(
      () {
        randomInt = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$randomInt.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
