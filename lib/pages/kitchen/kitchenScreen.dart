import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/components/userVerification.dart';
import 'package:hotel_management_system/constants/ClientFoodPreferenceTimeOfDayType.dart';
import 'package:hotel_management_system/pages/kitchen/ActiveMeal.dart';
import 'package:provider/provider.dart';

import 'kitchenCardsContainer.dart';
import 'mealButtons.dart';

class KitchenScreen extends StatefulWidget {
  const KitchenScreen({Key? key}) : super(key: key);

  @override
  _KitchenScreenState createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen> {

  ClientFoodPreferenceTimeOfDayType? selectedTimeOfDay;

  updateTimeOfDay(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return ChangeNotifierProvider(
      create: (_) => ActiveMeal(),
      child: UserVerification(
        routeRoles: arguments['role'],
        child: DashboardLayout(
          navigationRole: arguments['role'],
          child: Column(
            children: [
              SizedBox(height: 50),
              MealButtons(updateMeal: updateTimeOfDay,),
              Expanded(
                child: KitchenCardsContainer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
