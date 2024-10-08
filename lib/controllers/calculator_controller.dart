import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = '0'.obs;
  var secondNumber = '0'.obs;
  var mathResult = '0'.obs;
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

  addDecimalPoint() {
    if (mathResult.contains('.')) return;

    mathResult.value = '${mathResult.value}.';
  }

  selectOperation(String operatorSymbol) {
    operation.value = operatorSymbol;
    firstNumber.value = mathResult.value;
    mathResult.value = '0';
  }

  deleteLastNumber() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 1);
    } else {
      mathResult.value = '0';
    }
  }

  calculateResult() {
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(mathResult.value);

    secondNumber.value = mathResult.value;

    switch (operation.value) {
      case '/':
        mathResult.value = (num1 / num2).toString();
        break;
      case 'X':
        mathResult.value = (num1 * num2).toString();
        break;
      case '-':
        mathResult.value = (num1 - num2).toString();
        break;
      case '+':
        mathResult.value = (num1 + num2).toString();
        break;
    }
  }
}
