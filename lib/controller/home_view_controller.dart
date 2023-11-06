import 'package:get/get.dart';

class HomeViewController extends GetxController {
  int szam1 = 0;
  int szam2 = 0;

  void szamModositas(int szamIndexe, bool noveled) {
    switch (szamIndexe) {
      case 1:
        (noveled) ? szam1++ : szam1--;
        break;
      case 2:
        (noveled) ? szam2++ : szam2--;

        break;
    }
    update();
  }

  String szamologep({required String operator}) {
    switch (operator) {
      case '-':
        return (szam1 - szam2).toString();
      case '+':
        return (szam1 + szam2).toString();
      case '*':
        return (szam1 * szam2).toString();
      case '/':
        return (szam1.toDouble() / szam2).toString();
      default:
        return "";
    }
  }
}
