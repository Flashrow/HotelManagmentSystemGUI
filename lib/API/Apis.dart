class Apis {
  static const String users = "/users";
  static const String login = '$users/login';
  static const String clients = '/clients';
  static const String userDetails = '$clients/getMyDetails';
  static const String signUp = '$clients/signup';
  static const String rooms = '/rooms';
  static const String getAllRooms = '$rooms/getAllRooms';
  static const String addRoom = '$rooms/addRoom';
  static const String reservations = '/reservations';
  static const String addReservation = '$reservations/addReservation';
  static const String getMyResidences = '$reservations/getMyResidences';
  static const String getReservation = '$reservations/{id}/getReservation';
  static const String addFoodPreference = '$reservations/addFoodPreference';
  static const String addPayment = '$reservations/addPayment';
}
