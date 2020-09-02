import 'package:fingerprint_faceid_auth_api/application/helpers/cripty_helper.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/domain/entities/user.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/domain/repositories/i_user_repository.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/infra/datasource/i_user_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  
  final IUserDatasource _datasource;

  UserRepository(
    this._datasource,
  );

  @override
  Future<User> findUserByLoginPassword(String login, String password) {
    return _datasource.findUserByLoginPassword(login, CriptyHelper.generateSHA256Hash(password));
  }
}
