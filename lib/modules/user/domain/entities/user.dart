import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String login;
  final String password;

  const User({
    this.id,
    this.name,
    this.login,
    this.password,
  });

  @override
  List<Object> get props => [id, name, login, password];
}
