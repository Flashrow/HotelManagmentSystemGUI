import 'package:hotel_management_system/components/navigationComponent.dart';

enum MyRole {
  ROLE_ADMIN,
  ROLE_CLIENT,
  ROLE_STAFF,
  ROLE_MANAGER,
  ROLE_KITCHEN,
  ROLE_ROOM_SERVICE,
  ROLE_RECEPTION
}

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

  static bool checkNavigationElement(
      List<NavigationName> navigationElements, String navigationName) {
    bool occured = false;
    navigationElements.forEach((element) {
      if (element.buttonName == navigationName) occured = true;
    });

    if (!occured)
      return true;
    else
      return false;
  }

  static List<NavigationName> getNavigation(List<NavigationName> navigationList, String myRole) {
    switch (myRole) {
      case "ROLE_ADMIN":
        {
          if (checkNavigationElement(navigationList, "Reception")) {
            print("Reception not occured");
            navigationList.add(NavigationName(
                buttonName: "Reception", buttonRoute: "Reception"));
          }

          if (checkNavigationElement(navigationList, "Kitchen"))
            navigationList.add(
                NavigationName(buttonName: "Kitchen", buttonRoute: "Kitchen"));

          if (checkNavigationElement(navigationList, "Staff"))
            navigationList.add(NavigationName(
                buttonName: "Staff", buttonRoute: "Admin/Staff"));

          if (checkNavigationElement(navigationList, "Rooms"))
            navigationList.add(NavigationName(
                buttonName: "Rooms", buttonRoute: "Admin/Rooms"));
          return navigationList;
        }
      case "ROLE_CLIENT":
        {
          if (checkNavigationElement(navigationList, "Home"))
            navigationList.add(
                NavigationName(buttonName: "Home", buttonRoute: "Guest/Home"));
          return navigationList;
        }
      case "ROLE_KITCHEN":
        {
          if (checkNavigationElement(navigationList, "Kitchen"))
            navigationList.add(
                NavigationName(buttonName: "Kitchen", buttonRoute: "Kitchen"));
          return navigationList;
        }
      case "ROLE_RECEPTION":
        {
          if (checkNavigationElement(navigationList, "Reception")) {
            print("Reception not occured");
            navigationList.add(NavigationName(
                buttonName: "Reception", buttonRoute: "Reception"));
          }

          return navigationList;
        }
      case "ROLE_ROOM_SERVICE":
        {
          if (checkNavigationElement(navigationList, "RoomService"))
            navigationList.add(NavigationName(
                buttonName: "RoomService", buttonRoute: "RoomService"));
          return navigationList;
        }
      case "ROLE_STAFF":
        print("Adding staff permissions");
        // TODO: Handle this case.
        break;
      case "ROLE_MANAGER":
        print("Adding manager permissions");
        // TODO: Handle this case.
        break;
    }
    return navigationList;
  }
}
