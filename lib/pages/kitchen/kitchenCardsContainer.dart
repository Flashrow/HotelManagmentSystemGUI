import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/models/DTO/KitchenDishesDTO.dart';
import 'package:hotel_management_system/pages/kitchen/ActiveMeal.dart';
import 'package:provider/provider.dart';

import 'kitchenCard.dart';

class KitchenCardsContainer extends StatelessWidget {
  const KitchenCardsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    getFoodPreferences() {
      String timeOfDay;
      print("active meal: " + context.read<ActiveMeal>().activeMeal.toString());
      switch (context.read<ActiveMeal>().activeMeal) {
        case Meals.breakfast:
          timeOfDay = "BREAKFAST";
          break;
        case Meals.dinner:
          timeOfDay = "DINNER";
          break;
        case Meals.dinnerSupper:
          timeOfDay = "DINNER_SUPPER";
          break;
        case Meals.supper:
          timeOfDay = "SUPPER";
          break;
      }
      context.read<ApiClient>().database.getFoodPreferences(timeOfDay);
    }

    KitchenDishesDTO kitchenDishes = KitchenDishesDTO(standard: 0, vegan: 0, vegetarian: 0, clientFoodPreferences: []);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: FutureBuilder(
        future: getFoodPreferences(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          else if (snapshot.hasData) {
           kitchenDishes = snapshot.data;
          } else if (snapshot.hasError)
            return Text("ERROR: ${snapshot.error}");
          else
            return Text('None');

          return Wrap(
            spacing: 20.0,
            children: [
              KitchenCard(
                title: "Wszystkie",
                count: kitchenDishes.standard + kitchenDishes.vegan + kitchenDishes.vegetarian,
              ),
              KitchenCard(
                title: "Standard",
                count: kitchenDishes.standard,
              ),
              KitchenCard(
                title: "Wegetariańskie",
                count: kitchenDishes.vegetarian,
              ),
              KitchenCard(
                title: "Wegańskie",
                count: kitchenDishes.vegan,
              ),
            ],
          );
        },
      ),
    );
  }
}
