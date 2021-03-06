import 'package:fingerprint_faceid_auth_api/modules/user/domain/entities/user.dart';

abstract class IUserRepository {
  Future<User> findUserByLoginPassword(String login, String password);
}