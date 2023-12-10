import "dart:math";
import "package:flutter/material.dart";
import "package:roll_dice_app/styled_text.dart";

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoll> {
  // state defined here and with its default value
  var currentDiceRoll = 1;

  void rollDice() {
    var randomizedValue = randomizer.nextInt(6) + 1;
    if (randomizedValue != currentDiceRoll) {
      setState(() {
        currentDiceRoll = randomizedValue;
      });
      return;
    }
    rollDice();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText("Roll the Dice Game!"),
        const SizedBox(height: 50),
        Image.asset(
          'images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 24,
            ),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
