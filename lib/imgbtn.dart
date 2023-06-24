import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class ImageButton extends StatefulWidget {
  const ImageButton({super.key});
  @override
  State<ImageButton> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<ImageButton> {
  var diceImg = 'assets/images/default.png';

  void rollDice() {
    var dice = random.nextInt(6) + 1;
    setState(() {
      diceImg = 'assets/images/dice-$dice.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImg,
          width: 200,
        ),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xFF129C16),
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
        const Text(
          'BUILT BY: SAGAR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
