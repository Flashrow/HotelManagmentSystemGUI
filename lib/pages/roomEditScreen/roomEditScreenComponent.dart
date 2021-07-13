import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/pages/roomEditScreen/roomDetailsComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class RoomEditScreenComponent extends StatefulWidget {
  const RoomEditScreenComponent({Key? key}) : super(key: key);

  @override
  _RoomEditScreenComponentState createState() =>
      _RoomEditScreenComponentState();
}

class _RoomEditScreenComponentState extends State<RoomEditScreenComponent> {
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
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
                                        borderSide: new BorderSide(
                                            color:
                                                Theme.of(context).primaryColor),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                      ),
                                      suffixIcon: Icon(Icons.search,
                                          color:
                                              Theme.of(context).primaryColor),
                                      enabledBorder: new OutlineInputBorder(
                                          borderSide: new BorderSide(
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      hintText: "Room",
                                      hintStyle: TextStyle(
                                          color:
                                              Theme.of(context).primaryColor)),
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 11.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(0.0, 4.0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    textStyle: TextStyle(color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Nr pokoju'),
                                          Text('Nazwa pokoju'),
                                          Text('Cena'),
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
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 11.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(0.0, 4.0),
                                      ),
                                    ],
                                  ),
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('102'),
                                                    Text('Pokój 2'),
                                                    Text('200zł'),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    IconButton(
                                                      icon: Icon(
                                                          Icons.edit_outlined),
                                                      onPressed: () => {},
                                                      splashRadius: 25,
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.delete),
                                                      onPressed: () => {},
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
                      child: RoomDetailsComponent(
                        roomNameText: 'Pokój 2137',
                        roomDescText: 'mały ale szybkie wifi',
                        roomNumberText: '3',
                        roomPriceText: '420',
                        roomSizeText: '3',
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedRoundedButton(
                buttonText: 'Nowy pokój',
                onPresesed: () => {Navigator.of(context).pop()},
              ),
              SizedBox(
                height: 32,
              )
            ],
          ),
        )
      ],
    );
  }
}
