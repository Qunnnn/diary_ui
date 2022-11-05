import 'food.dart';

class ListFood {
  List<Food> breakFast = [
    Food('Bread,'),
    Food('Peanut butter,'),
    Food('Apple')
  ];

  List<Food> lunch = [Food('Salmon,'), Food('Mixed veggies,'), Food('Avocado')];
  List<Food> snack = [
    Food('Recommend,'),
  ];

  String getFoodBreakFastText(int index) {
    return breakFast[index].text;
  }

  String getFoodLunchText(int index) {
    return lunch[index].text;
  }
  String getSnackText(int index) {
    return snack[index].text;
  }
}
