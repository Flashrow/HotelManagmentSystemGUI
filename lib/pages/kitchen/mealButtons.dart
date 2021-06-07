import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hotel_management_system/pages/kitchen/ActiveMeal.dart';
import 'package:provider/provider.dart';

class MealButtons extends StatelessWidget {
  const MealButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GroupButton(
      spacing: 10,
      isRadio: true,
      direction: Axis.horizontal,
      onSelected: (index, isSelected) => context.read<ActiveMeal>().setActiveMeal(index),
      buttons: ["Śniadanie", "Obiad", "Obiado-kolacja", "Kolacja"],
      selectedButton: context.read<ActiveMeal>().activeMeal.index,
      selectedTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.white,
      ),
      unselectedTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Theme.of(context).primaryColor,
      ),
      selectedColor: Theme.of(context).primaryColor,
      unselectedColor: Colors.white,
      selectedBorderColor: Theme.of(context).primaryColor,
      unselectedBorderColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15.0),
      selectedShadow: <BoxShadow>[BoxShadow(color: Colors.transparent)],
      unselectedShadow: <BoxShadow>[BoxShadow(color: Colors.transparent)],
    );
  }
}
