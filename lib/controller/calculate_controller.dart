import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  
  var userInput = "";
  var userOutput = "";

  /// Equal Button
  equalPressed() {
    String userInputFC = userInput;
    userInputFC = userInputFC.replaceAll("x", "*");
    Parser p = Parser();
    Expression exp = p.parse(userInputFC);
    ContextModel ctx = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, ctx);

    userOutput = eval.toString();
    update();
  }

  /// Clear Button
  clearInputAndOutput() {
    userInput = "";
    userOutput = "";
    update();
  }

  /// Delete Button
  deleteBtnAction() {
    userInput = userInput.substring(0, userInput.length - 1);
    update();
  }

  // NUMBER BUTTONS ONTAP
  onBtnTapped(List<String> buttons, int index) {
    userInput += buttons[index];
    update();
  }
}
