import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/components/passwordFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'dart:convert';

enum Food { breakfast, lunch, dinner, lunchDinner }

class Meal {
  final Food foodType;
  Meal(this.foodType);
}

class CustomerData extends StatefulWidget {
  const CustomerData({Key? key}) : super(key: key);

  @override
  _CustomerDataState createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  bool boolBreakfast = false;
  bool boolLunch = false;
  bool boolDinner = false;
  bool boolLunchDinner = false;
  List<Meal> meals = [];

  void onCategorySelected(bool selected, Food foodType) {
    if (selected == true) {
      meals.add(Meal(foodType));
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
            //onChange: () => {},
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
                        onCategorySelected(boolBreakfast, Food.breakfast);
                        //print(meals);
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
                        onCategorySelected(boolLunch, Food.lunch);
                        //print(meals);
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
                    //Expanded(child: Container()),
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
                        onCategorySelected(boolLunchDinner, Food.lunchDinner);
                        //print(meals);
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
                        onCategorySelected(boolDinner, Food.dinner);
                        //print(meals);
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
                    //Expanded(child: Container()),
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
