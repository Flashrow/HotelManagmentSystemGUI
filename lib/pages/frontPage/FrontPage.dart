import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:hotel_management_system/pages/frontPage/FrontPageAppBar.dart';
import 'package:provider/provider.dart';

import 'RoomCard.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future<List<Room>> _getRooms() async {
      return await context.read<ApiClient>().database.getRooms();
    }

    List<Room> rooms = [];
    
    return FutureBuilder(
      future: _getRooms(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

         if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasData) {
              rooms = snapshot.data;
            } else if (snapshot.hasError)
              return Text("ERROR: ${snapshot.error}");
            else
              return Text('None');
            
            if(rooms.isEmpty)
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Text("Brak pokoi"),
            );

        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: FrontPageAppBar(),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeadingText(text: "Oferta hotelu"),
                SizedBox(height: 130.0),
                Flexible(
                  child: ListView.builder(
                    itemCount: rooms.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Align(
                        alignment: Alignment.topCenter,
                        child: RoomCard(
                          room: rooms[index],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
