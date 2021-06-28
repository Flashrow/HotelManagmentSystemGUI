import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class RoomComponent extends StatelessWidget {
  const RoomComponent({
    Key? key,
    this.titleText = "Title",
    this.guestNumber = 0,
    this.startDate = "Data",
    this.endDate = "Data",
    this.days = 0,
    this.price = 0,
  }) : super(key: key);

  final String titleText;
  final String startDate;
  final String endDate;
  final num guestNumber;
  final num days;
  final num price;

  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container()),
              Text(
                titleText,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 24,
                width: 24,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/people_outline.png'),
                      //fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                guestNumber.toString(),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CustomTextField(
                titleText: 'Data zameldowania',
                hintText: startDate,
                //onChange: () => {},
              ),
              SizedBox(
                width: 20,
              ),
              CustomTextField(
                titleText: 'Data wymeldowania',
                hintText: endDate,
                //onChange: () => {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.black,
              // ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 11.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 4.0), // shadow direction: bottom right
                ),
              ],
            ),
            child: Container(
              height: 52,
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text("Łączna ilość dni:"),
                  Expanded(child: Container()),
                  Text(days.toString()),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/today.png'),
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.black,
              // ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 11.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 4.0), // shadow direction: bottom right
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.all(8),
              height: 52,
              child: Row(
                children: [
                  Text("Kwota do zapłaty:"),
                  Expanded(child: Container()),
                  Text(price.toString() + "zł"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
