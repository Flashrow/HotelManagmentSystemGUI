import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/kitchen/ActiveMeal.dart';
import 'package:provider/provider.dart';

import 'kitchenCardsContainer.dart';
import 'mealButtons.dart';
import 'mealList.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: KitchenCardsContainer(),
                ),
                Expanded(
                  flex: 6,
                  child: MealList(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
