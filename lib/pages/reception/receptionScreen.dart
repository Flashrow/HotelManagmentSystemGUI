import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/reception/components/clientDataWidget.dart';
import 'package:hotel_management_system/pages/reception/components/clientFoodWidget.dart';

import 'components/clientStayWidget.dart';
import 'components/clientTopBarWidget.dart';

class ReceptionScreen extends StatelessWidget {
  const ReceptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardLayout(
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
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
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
                          itemCount: 20,
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
                                          Text('Kowalski Dawid'),
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
                                            onPressed: () => {print("restaurant_menu_outlined")},
                                            splashRadius: 25,
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.room_service_outlined),
                                            onPressed: () => {print("room_service_outlined")},
                                            splashRadius: 25,
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.attach_money),
                                            onPressed: () => {print("attach_money")},
                                            splashRadius: 25,
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.edit_outlined),
                                            onPressed: () => {print("edit_outlined")},
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
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  ClientTopBar(),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                ClientDataWidget(),
                                ClientStayWidget(),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                Expanded(child: ClientFoodWidget()),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
