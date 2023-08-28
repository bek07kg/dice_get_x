import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiceWidget extends StatelessWidget {
  DiceWidget({
    super.key,
    required this.onTap,
    required this.diceCount,
  });

  void Function()? onTap;
  final String diceCount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/dice_$diceCount.png",
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
