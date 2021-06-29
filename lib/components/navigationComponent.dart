import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:hotel_management_system/utils/whoAmI.dart';

class NavigationName {
  String buttonName;
  String buttonRoute;
  NavigationName({required this.buttonName, required this.buttonRoute});
}

class NavigationComponent extends StatefulWidget {
  String navigationRole = "";
  NavigationComponent({Key? key, required this.navigationRole}) : super(key: key);

  @override
  _NavigationComponentState createState() => _NavigationComponentState();
}

class _NavigationComponentState extends State<NavigationComponent> {
  @override
  Widget build(BuildContext context) {
    List<NavigationName> navigationList = NavigationController.getNavigation(widget.navigationRole);
    return Material(
      color: Theme.of(context).primaryColor,
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/hotelNameBackground.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: ListView.builder(
                  itemCount: navigationList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        navigationList[index].buttonName,
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(Icons.home, color: Colors.white),
                      onTap: () => {Navigator.pushNamed(context, navigationList[index].buttonRoute)},
                    );
                  },
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
                        child: Icon(Icons.logout, color: Colors.white),
                      ),
                      Text('Wyloguj się', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
