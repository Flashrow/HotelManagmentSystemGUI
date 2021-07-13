import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class ClientBloc {
  late ApiClient api;

  ClientBloc(this.api);
  GlobalKey<FormState>? formkey;

  final _name = BehaviorSubject<String>();
  final _surname = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  final _address = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _city = BehaviorSubject<String>();
  final _country = BehaviorSubject<String>();
  final _number = BehaviorSubject<String>();
  final _postCode = BehaviorSubject<String>();
  final _repeatedEmail = BehaviorSubject<String>();
  final _repeatedPassword = BehaviorSubject<String>();
  final _rulesAccept = BehaviorSubject<bool>();

  Stream<String> get name => _name.stream;
  Stream<String> get surname => _surname.stream;
  Stream<String> get password => _password.stream;
  Stream<String> get address => _address.stream;
  Stream<String> get email => _email.stream;
  Stream<String> get city => _city.stream;
  Stream<String> get country => _country.stream;
  Stream<String> get number => _number.stream;
  Stream<String> get postCode => _postCode.stream;
  Stream<String> get repeatedEmail => _repeatedEmail.stream;
  Stream<String> get repeatedPassword => _repeatedPassword.stream;
  Stream<bool> get rulesAccept => _rulesAccept.stream;

  Function(String) get changeName => _name.sink.add;
  Function(String) get changeSurname => _surname.sink.add;
  Function(String) get changePassword => _password.sink.add;
  Function(String) get changeAddress => _address.sink.add;
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changeCity => _city.sink.add;
  Function(String) get changeCountry => _country.sink.add;
  Function(String) get changeNumber => _number.sink.add;
  Function(String) get changePostCode => _postCode.sink.add;
  Function(String) get changeRepeatedEmail => _repeatedEmail.sink.add;
  Function(String) get changeRepeatedPassword => _repeatedPassword.sink.add;
  Function(bool) get changeRulesAccept => _rulesAccept.sink.add;

  dispose() {
    _name.close();
    _surname.close();
    _password.close();
    _address.close();
    _email.close();
    _city.close();
    _country.close();
    _number.close();
    _postCode.close();
    _repeatedPassword.close();
    _repeatedEmail.close();
    _rulesAccept.close();
  }

  submitClient(BuildContext context) async {
    if (formkey!.currentState!.validate()) {
      if (!_rulesAccept.hasValue || _rulesAccept.value == false) {
        showErrorToast('Zaakceptuj regulamin');
        return;
      }

      String? msg;
      if ((msg = validateEmail()) != null) {
        showErrorToast(msg!);
        return;
      }
      if ((msg = validatePassword()) != null) {
        showErrorToast(msg!);
        return;
      }
      try {
        await api.auth.signUp(
            email: _email.value,
            password: _password.value,
            address: _address.value,
            city: _city.value,
            country: _country.value,
            name: _name.value,
            number: _number.value,
            postCode: _postCode.value,
            repeatedEmail: _repeatedEmail.value,
            repeatedPassword: _repeatedPassword.value,
            surname: _surname.value);
        showSuccessToast('Zarejestrowano poprawnie');
        Navigator.of(context).pop();
      } catch (e) {
        showErrorToast('Podano błędne dane');
      }
    } else {
      print('validate error');
    }
  }

  bool compareStreams(BehaviorSubject s1, BehaviorSubject s2) {
    return s1.hasValue && s2.hasValue && s1.value == s2.value;
  }

  String? validateEmail() {
    if (compareStreams(_repeatedEmail, _email)) return null;
    return "Email nie mogą się różnić";
  }

  String? validatePassword() {
    if (compareStreams(_password, _repeatedPassword)) return null;
    return "Hasła nie mogą się różnić";
  }

  showErrorToast(String message) {
    Fluttertoast.showToast(
      webBgColor: "#ff1744",
      webPosition: "center",
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
    );
  }

  showSuccessToast(String message) {
    Fluttertoast.showToast(
      webBgColor: "#00C851",
      webPosition: "center",
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
    );
  }
}
