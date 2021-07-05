import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/constants/ClientFoodPreferenceTimeOfDayType.dart';
import 'package:hotel_management_system/models/Interim/GuestInfo.dart';

class Meal {
  final ClientFoodPreferenceTimeOfDayType foodType;
  Meal(this.foodType);
}

class CustomerData extends StatefulWidget {
  const CustomerData({Key? key, required this.guest}) : super(key: key);

  final GuestInfo? guest;

  @override
  _CustomerDataState createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  bool boolBreakfast = false;
  bool boolLunch = false;
  bool boolDinner = false;
  bool boolLunchDinner = false;
  List<Meal> meals = [];

  void onCategorySelected(bool selected, ClientFoodPreferenceTimeOfDayType foodType) {
    if (selected == true) {
      meals.add(Meal(foodType));
      this.widget.guest?.addTimeOfDayType(foodType);
    } else {
      meals.removeLast();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          CustomTextField(
            titleText: 'Imię i nazwisko',
            hintText: 'Podaj dane lokatora',
            onChange: (String _name) => {
              this.widget.guest?.name = _name,
            },
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: boolBreakfast,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          boolBreakfast = agreementValue!;
                        });
                        onCategorySelected(boolBreakfast, ClientFoodPreferenceTimeOfDayType.BREAKFAST);
                      },
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                      'Śniadanie',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RobotoMono',
                        color: Colors.black87,
                      ),
                    ),
                    Checkbox(
                      value: boolLunch,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          boolLunch = agreementValue!;
                        });
                        onCategorySelected(boolLunch, ClientFoodPreferenceTimeOfDayType.DINNER);
                      },
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                      'Obiad',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RobotoMono',
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: boolLunchDinner,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          boolLunchDinner = agreementValue!;
                        });
                        onCategorySelected(boolLunchDinner, ClientFoodPreferenceTimeOfDayType.DINNER_SUPPER);
                      },
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                      'Obiadokolacja',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RobotoMono',
                        color: Colors.black87,
                      ),
                    ),
                    Checkbox(
                      value: boolDinner,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          boolDinner = agreementValue!;
                        });
                        onCategorySelected(boolDinner, ClientFoodPreferenceTimeOfDayType.SUPPER);
                      },
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                      'Kolacja',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RobotoMono',
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
