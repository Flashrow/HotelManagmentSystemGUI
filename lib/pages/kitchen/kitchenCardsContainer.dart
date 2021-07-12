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
    Meals activeMeal = context.watch<ActiveMeal>().activeMeal;
    print("Kitchen Cards Container build " + activeMeal.toString());

    getFoodPreferences() {
      String timeOfDay;
      print("active meal: " + activeMeal.toString());
      switch (activeMeal) {
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
      return context.read<ApiClient>().database.getFoodPreferences(timeOfDay);
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

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(300, 0, 300, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    KitchenCard(
                      title: "Standard",
                      count: kitchenDishes.standard,
                      headerColor: Theme.of(context).colorScheme.secondary,
                    ),
                    KitchenCard(
                      title: "Wegetariańskie",
                      count: kitchenDishes.vegetarian,
                      headerColor: Theme.of(context).colorScheme.secondary,
                    ),
                    KitchenCard(
                      title: "Wegańskie",
                      count: kitchenDishes.vegan,
                      headerColor: Theme.of(context).colorScheme.secondary,
                    ),
                  ],
                ),
              ),
              KitchenCard(
                title: "Wszystkie",
                count: kitchenDishes.standard + kitchenDishes.vegan + kitchenDishes.vegetarian,
                headerColor: Theme.of(context).colorScheme.primary,
              ),
            ],
          );
        },
      ),
    );
  }
}
