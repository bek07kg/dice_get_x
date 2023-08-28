import 'package:dice_get_x/controller/dice_controller.dart';
import 'package:dice_get_x/widget/dice_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final dice = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Dice GetX",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Obx(
          () => Row(
            children: [
              DiceWidget(
                onTap: dice.ontab,
                diceCount: "${dice.test(dice.leftDice.value)}",
              ),
              DiceWidget(
                onTap: dice.ontab,
                diceCount: "${dice.test(dice.rightDice.value)}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
