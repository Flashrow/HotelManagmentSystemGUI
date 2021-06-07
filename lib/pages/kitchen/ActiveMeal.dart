import 'package:flutter/cupertino.dart';

class ActiveMeal with ChangeNotifier {
  Meals activeMeal = Meals.values[0];

  setActiveMeal(int index) {
    activeMeal = Meals.values[index];
    notifyListeners();
  }
}

enum Meals { breakfast, dinner, dinnerSupper, supper }
