import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/kitchen/ActiveMeal.dart';
import 'package:provider/provider.dart';

import 'kitchenCardsContainer.dart';
import 'mealButtons.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ActiveMeal(),
      child: DashboardLayout(
        child: Column(
          children: [
            SizedBox(height: 50),
            MealButtons(),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: KitchenCardsContainer(),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Specjalne",
                            style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            height: 1.0,
                            alignment: Alignment.topCenter,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
