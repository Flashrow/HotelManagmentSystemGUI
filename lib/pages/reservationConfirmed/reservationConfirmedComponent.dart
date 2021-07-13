import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class ReservationConfirmedComponent extends StatelessWidget {
  const ReservationConfirmedComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Center(
      child: Container(
        decoration: BoxDecoration(
          //border: Border.all(
          //  color: Colors.black,
          //),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bedAsset.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: HeadingText(text: 'Rezerwacja'),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      height: 48,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/fingerIcon.png'),
                            //fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Rezerwacja została dokonana",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FilledRoundedButton(
                      buttonText: 'zobacz swoje rezerwacje',
                      onPresesd: () {
                        Navigator.of(context).pushNamed("Guest/Home");
                      },
                    ),
                    Expanded(child: Container()),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          OutlinedRoundedButton(
                            buttonText: 'kontynuuj',
                            onPresesed: () {
                              Navigator.of(context).pushNamed("FrontPage");
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
