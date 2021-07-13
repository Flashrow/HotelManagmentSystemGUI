import 'package:hotel_management_system/components/navigationComponent.dart';

enum MyRole { ROLE_ADMIN, ROLE_CLIENT, ROLE_STAFF, ROLE_MANAGER, ROLE_KITCHEN, ROLE_ROOM_SERVICE, ROLE_RECEPTION }

class NavigationController {
  static String getPath(String myRole) {
    switch (myRole) {
      case "ROLE_ADMIN":
        {
          return "Admin/Rooms";
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
          return "RoomService";
        }
      case "ROLE_STAFF":
        break;
      case "ROLE_MANAGER":
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
          navigationList.add(NavigationName(buttonName: "Kitchen", buttonRoute: "Kitchen"));
          navigationList.add(NavigationName(buttonName: "Staff", buttonRoute: "Admin/Staff"));
          navigationList.add(NavigationName(buttonName: "Rooms", buttonRoute: "Admin/Rooms"));
          navigationList.add(NavigationName(buttonName: "Guest", buttonRoute: "Guest"));
          return navigationList;
        }
      case "ROLE_CLIENT":
        {
          navigationList.add(NavigationName(buttonName: "Home", buttonRoute: "Guest/Home"));
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
