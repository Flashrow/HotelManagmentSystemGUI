import 'package:hotel_management_system/components/navigationComponent.dart';

enum MyRole { ROLE_ADMIN, ROLE_CLIENT, ROLE_STAFF, ROLE_MANAGER, ROLE_KITCHEN, ROLE_ROOM_SERVICE, ROLE_RECEPTION }

class NavigationController {
  static String getPath(String myRole) {
    switch (myRole) {
      case "ROLE_ADMIN":
        {
          return "login";
        }
      case "ROLE_CLIENT":
        {
          return "Guest";
        }
      case "ROLE_KITCHEN":
        {
          return "Kitchen";
        }
      case "ROLE_RECEPTION":
        {
          return "Reception";
        }
      case "ROLE_ROOM_SERVICE":
        {
          return "Register";
        }
      case "ROLE_STAFF":
        // TODO: Handle this case.
        break;
      case "ROLE_MANAGER":
        // TODO: Handle this case.
        break;
    }
    return "Login";
  }

  static List<NavigationName> getNavigation(String myRole) {
    List<NavigationName> navigationList = [];
    switch (myRole) {
      case "ROLE_ADMIN":
        {
          navigationList.add(NavigationName(buttonName: "Reception", buttonRoute: "Reception"));
          navigationList.add(NavigationName(buttonName: "Reception", buttonRoute: "Reception"));
          return navigationList;
        }
      case "ROLE_CLIENT":
        {
          navigationList.add(NavigationName(buttonName: "Home", buttonRoute: "Guest/Home"));
          navigationList.add(NavigationName(buttonName: "Stay", buttonRoute: "Guest/Stay"));
          return navigationList;
        }
      case "ROLE_KITCHEN":
        {
          navigationList.add(NavigationName(buttonName: "Kitchen", buttonRoute: "Kitchen"));
          return navigationList;
        }
      case "ROLE_RECEPTION":
        {
          navigationList.add(NavigationName(buttonName: "Reception", buttonRoute: "Reception"));
          return navigationList;
        }
      case "ROLE_ROOM_SERVICE":
        {
          navigationList.add(NavigationName(buttonName: "RoomService", buttonRoute: "RoomService"));
          return navigationList;
        }
      case "ROLE_STAFF":
        // TODO: Handle this case.
        break;
      case "ROLE_MANAGER":
        // TODO: Handle this case.
        break;
    }
    return navigationList;
  }
}
