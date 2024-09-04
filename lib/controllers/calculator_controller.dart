import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = '10'.obs;
  var secondNumber = '20'.obs;
  var mathResult = '30'.obs;
  var operation = '+'.obs;

  resetAll() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    mathResult.value = '0';
    operation.value = '+';
  }

  changeNegatievPositive() {
    if (mathResult.startsWith('-')) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-${mathResult.value}';
    }
  }

  addNumber(String number) {
    if (mathResult.value == '0') return mathResult.value = number;

    if (mathResult.value == '-0') return mathResult.value = '-$number';

    mathResult.value = mathResult.value + number;
  }
}
