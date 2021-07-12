import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:provider/provider.dart';

class TopBar extends StatefulWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: Text(
                'Gość',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: CircleAvatar(
                maxRadius: 24,
                backgroundImage: AssetImage("images/avatar.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 135, 0),
              child: Text(
                '${context.read<ApiClient>().auth.currentUser?.firstName ?? "Jan"} ${context.read<ApiClient>().auth.currentUser?.lastName ?? "Kowalski"}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
