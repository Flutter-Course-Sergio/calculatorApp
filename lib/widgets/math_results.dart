import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/calculator_controller.dart';
import 'widegts.dart';

class MathResults extends StatelessWidget {
  final calculatorController = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${calculatorController.firstNumber}'),
          SubResult(text: '${calculatorController.operation}'),
          SubResult(text: '${calculatorController.secondNumber}'),
          const LineSeparator(),
          MainResult(text: '${calculatorController.mathResult}'),
        ],
      ),
    );
  }
}
