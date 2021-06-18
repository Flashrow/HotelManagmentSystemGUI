import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/components/passwordFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class CustomerData extends StatefulWidget {
  const CustomerData({Key? key}) : super(key: key);

  @override
  _CustomerDataState createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  bool breakfast = false;
  bool lunch = false;
  bool dinner = false;
  bool lunchDinner = false;
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
                      value: breakfast,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          breakfast = agreementValue!;
                        });
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
                      value: lunch,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          lunch = agreementValue!;
                        });
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
                      value: lunchDinner,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          lunchDinner = agreementValue!;
                        });
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
                      value: dinner,
                      onChanged: (bool? agreementValue) {
                        setState(() {
                          dinner = agreementValue!;
                        });
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
