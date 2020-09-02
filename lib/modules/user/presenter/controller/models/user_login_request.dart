import 'package:aqueduct/aqueduct.dart';

class UserLoginRequest extends Serializable {

  String login;
  String password;

  @override
  Map<String, dynamic> asMap() {
    return {
      'login': login,
      'password': password
    };
  }

  @override
  void readFromMap(Map<String, dynamic> object) {
    login = object['login'] as String;
    password = object['password'] as String;
  }
}