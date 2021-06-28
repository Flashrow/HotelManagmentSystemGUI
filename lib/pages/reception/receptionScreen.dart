import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/navigationComponent.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/components/topBar.dart';
import 'package:hotel_management_system/components/userVerification.dart';
import 'package:hotel_management_system/pages/reception/payment_components/clientDataWidget.dart';
import 'package:hotel_management_system/pages/reception/payment_components/clientFoodWidget.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:hotel_management_system/utils/whoAmI.dart';

import 'edit_components/editClientWidget.dart';
import 'payment_components/clientPaymentWidget.dart';
import 'payment_components/clientStayWidget.dart';
import 'payment_components/clientTopBarWidget.dart';

class ReceptionScreen extends StatefulWidget {
  late String name = "Name";
  late String surname = "Surname";
  late String phoneNumber;
  late String country;
  late String city;
  late String postCode;
  late String streetName;
  ReceptionScreen(
      {Key? key,
      String? name,
      String? surname,
      String? phoneNumber,
      String? country,
      String? city,
      String? postCode,
      String? streetName})
      : super(key: key);

  @override
  _ReceptionScreenState createState() => _ReceptionScreenState();
}

class _ReceptionScreenState extends State<ReceptionScreen> {
  List<String> names = <String>[
    "name1",
    "name2",
    "name3",
    "name4",
    "name5",
    "name6",
    "name7",
    "name8",
    "name9",
    "name10",
    "name11",
    "name12",
    "name13",
    "name14",
    "name15",
    "name16"
  ];
  bool myWidget = false;
  String clientName = "tempclient";
  @override
  Widget build(BuildContext context) {
    var swapWidget;
    if (myWidget == true) {
      swapWidget = new EditClientWidget(key: UniqueKey(), clientName: clientName);
    } else {
      swapWidget = new ClientPaymentWidget(key: UniqueKey(), clientName: clientName);
    }

    var myTile = ListTile(
      title: swapWidget,
    );
    return UserVerification(
      routeRoles: [MyRole.ROLE_RECEPTION, MyRole.ROLE_ADMIN],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          children: <Widget>[
            Container(
              width: 300,
              child: NavigationComponent(),
            ),
            Expanded(
              child: Column(
                children: [
                  TopBar(),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: TextField(
                                      decoration: new InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderSide: new BorderSide(color: Theme.of(context).primaryColor),
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                          ),
                                          suffixIcon: Icon(Icons.search, color: Theme.of(context).primaryColor),
                                          enabledBorder: new OutlineInputBorder(
                                              borderSide: new BorderSide(
                                                color: Theme.of(context).primaryColor,
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(30))),
                                          hintText: "Numer Pokoju",
                                          hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
                                      style: TextStyle(color: Theme.of(context).primaryColor),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Material(
                                        color: Colors.transparent,
                                        textStyle: TextStyle(color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Nr pokoju'),
                                              Text('Dane personalne'),
                                              Text('Numer kontaktowy'),
                                              Text('Rozpoczecie meldunku'),
                                              Container(width: 110),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: ListView.builder(
                                        itemCount: 15,
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            title: InkWell(
                                              onTap: () => {},
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 5,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('101'),
                                                        Text(names[index]),
                                                        Text('+48 111 222 333'),
                                                        Text('05.05.2021'),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        IconButton(
                                                          icon: Icon(Icons.restaurant_menu_outlined),
                                                          onPressed: () => {"restaurant_menu_outlined"},
                                                          splashRadius: 25,
                                                        ),
                                                        IconButton(
                                                          icon: Icon(Icons.room_service_outlined),
                                                          onPressed: () => {print("room_service_outlined")},
                                                          splashRadius: 25,
                                                        ),
                                                        IconButton(
                                                          icon: Icon(Icons.attach_money),
                                                          onPressed: () => {
                                                            if (myWidget == true)
                                                              setState(() {
                                                                clientName = names[index];
                                                                myWidget = false;
                                                              })
                                                            else
                                                              {
                                                                setState(() {
                                                                  clientName = names[index];
                                                                })
                                                              }
                                                          },
                                                          splashRadius: 25,
                                                        ),
                                                        IconButton(
                                                          icon: Icon(Icons.edit_outlined),
                                                          onPressed: () => {
                                                            if (myWidget == false)
                                                              setState(() {
                                                                clientName = names[index];
                                                                myWidget = true;
                                                              })
                                                            else
                                                              {
                                                                setState(() {
                                                                  clientName = names[index];
                                                                })
                                                              }
                                                          },
                                                          splashRadius: 25,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ListView(
                            children: <Widget>[
                              myTile,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
