import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/components/navigationComponent.dart';
import 'package:hotel_management_system/components/topBar.dart';
import 'package:hotel_management_system/components/userVerification.dart';
import 'package:hotel_management_system/models/Client.dart';
import 'package:hotel_management_system/models/DTO/SingleActiveRoomDTO.dart';
import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:provider/provider.dart';

import 'edit_components/editClientWidget.dart';
import 'payment_components/clientPaymentWidget.dart';

class ReceptionScreen extends StatefulWidget {
  ReceptionScreen({Key? key}) : super(key: key);

  @override
  _ReceptionScreenState createState() => _ReceptionScreenState();
}

class _ReceptionScreenState extends State<ReceptionScreen> {
  bool myWidget = false;
  String clientName = "tempclient";
  SingleActiveRoomDTO temp = SingleActiveRoomDTO(
      endDate: "koniec",
      startDate: "początek",
      room: Room(
        description: 'opis',
        floor: 1,
        id: 0,
        number: 5,
        price: 500,
        size: 5,
      ),
      client: Client(
          country: 'kraj',
          address: 'adres',
          city: 'miasto',
          email: 'email',
          firstName: 'imie',
          id: 0,
          lastName: 'nazwisko',
          password: 'haslo',
          phoneNumber: 'nr telefonu',
          postCode: 'kod pocztowy',
          roles: []));
  List<SingleActiveRoomDTO> filteredRoom = [];
  List<SingleActiveRoomDTO> raw = [];

  filterListBySurname(String surname) {
    List<SingleActiveRoomDTO> empty = [];
    raw.forEach((element) {
      if (element.client.lastName.contains(surname)) empty.add(element);
    });
    setState(() {
      filteredRoom = empty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    try {
      context.read<ApiClient>().database.getActiveRooms().then(
            (value) => setState(() {
              print("value: ");
              print(value);
              raw = value;
              filteredRoom = value;
            }),
          );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    ApiClient apiClient = context.read<ApiClient>();

    Future<List<SingleActiveRoomDTO>> activeRooms = apiClient.database.getActiveRooms();

    //Map arguments =//ModalRoute.of(context)!.settings.arguments as Map;
    var swapWidget;
    if (myWidget == true) {
      swapWidget = new EditClientWidget(key: UniqueKey(), roomData: temp);
    } else {
      swapWidget = new ClientPaymentWidget(key: UniqueKey(), roomData: temp);
    }

    var myTile = ListTile(
      title: swapWidget,
    );
    return UserVerification(
      routeRoles: ["ROLE_RECEPTION"],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          children: <Widget>[
            Container(
              width: 300,
              child: NavigationComponent(navigationRole: ["ROLE_RECEPTION", "ROLE_ADMIN"]),
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
                                      onChanged: filterListBySurname,
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
                                        itemCount: filteredRoom.length,
                                        itemBuilder: (context, index) {
                                          SingleActiveRoomDTO singleActiveRoom = filteredRoom[index];
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
                                                        Text(singleActiveRoom.room.id.toString()),
                                                        Text(singleActiveRoom.client.firstName +
                                                            " " +
                                                            singleActiveRoom.client.lastName),
                                                        Text(singleActiveRoom.client.phoneNumber),
                                                        Text(singleActiveRoom.client.city),
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
                                                                clientName = singleActiveRoom.client.firstName;
                                                                temp = singleActiveRoom;
                                                                myWidget = false;
                                                              })
                                                            else
                                                              {
                                                                setState(() {
                                                                  clientName = singleActiveRoom.client.firstName;
                                                                  temp = singleActiveRoom;
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
                                                                clientName = singleActiveRoom.client.firstName;
                                                                temp = singleActiveRoom;
                                                                myWidget = true;
                                                              })
                                                            else
                                                              {
                                                                setState(() {
                                                                  clientName = singleActiveRoom.client.firstName;
                                                                  temp = singleActiveRoom;
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
