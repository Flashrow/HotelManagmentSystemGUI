import 'package:hotel_management_system/components/navigationComponent.dart';

enum MyRole { ROLE_ADMIN, ROLE_CLIENT, ROLE_STAFF, ROLE_MANAGER, ROLE_KITCHEN, ROLE_ROOM_SERVICE, ROLE_RECEPTION }

class WhatRoleAmI {
  static MyRole myRole = MyRole.ROLE_RECEPTION;
  static String getPath() {
    var tempRole = WhatRoleAmI.myRole;
    switch (tempRole) {
      case MyRole.ROLE_ADMIN:
        {
          return "login";
        }
      case MyRole.ROLE_CLIENT:
        {
          return "Guest";
        }
      case MyRole.ROLE_KITCHEN:
        {
          return "Kitchen";
        }
      case MyRole.ROLE_RECEPTION:
        {
          return "Reception";
        }
      case MyRole.ROLE_ROOM_SERVICE:
        {
          return "Register";
        }
      case MyRole.ROLE_STAFF:
        // TODO: Handle this case.
        break;
      case MyRole.ROLE_MANAGER:
        // TODO: Handle this case.
        break;
    }
    return "Login";
  }

  static List<NavigationName> getNavigation() {
    List<NavigationName> navigationList = [];
    var tempRole = WhatRoleAmI.myRole;
    switch (tempRole) {
      case MyRole.ROLE_ADMIN:
        {
          navigationList.add(NavigationName(buttonName: "Reception", buttonRoute: "Reception"));
          navigationList.add(NavigationName(buttonName: "Reception", buttonRoute: "Reception"));
          return navigationList;
        }
      case MyRole.ROLE_CLIENT:
        {
          navigationList.add(NavigationName(buttonName: "Home", buttonRoute: "Guest/Home"));
          navigationList.add(NavigationName(buttonName: "Stay", buttonRoute: "Guest/Stay"));
          return navigationList;
        }
      case MyRole.ROLE_KITCHEN:
        {
          navigationList.add(NavigationName(buttonName: "Kitchen", buttonRoute: "Kitchen"));
          return navigationList;
        }
      case MyRole.ROLE_RECEPTION:
        {
          navigationList.add(NavigationName(buttonName: "Reception", buttonRoute: "Reception"));
          return navigationList;
        }
      case MyRole.ROLE_ROOM_SERVICE:
        {
          navigationList.add(NavigationName(buttonName: "RoomService", buttonRoute: "RoomService"));
          return navigationList;
        }
      case MyRole.ROLE_STAFF:
        // TODO: Handle this case.
        break;
      case MyRole.ROLE_MANAGER:
        // TODO: Handle this case.
        break;
    }
    return navigationList;
  }
}
