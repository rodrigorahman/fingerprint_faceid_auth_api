import 'package:fingerprint_faceid_auth_api/application/database/i_database_connection.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/domain/entities/user.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/exceptions/auth_exceptions.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/infra/datasource/i_user_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@Injectable(as: IUserDatasource)
class UserDatasource implements IUserDatasource {
  final IDatabaseConnection _connection;

  UserDatasource(this._connection);

  @override
  Future<User> findUserByLoginPassword(String login, String password) async {
    try {
      final db = await _connection.openConnection();
      final result = await db.collection('usuarios').findOne(
            where
                .eq(
                  'login',
                  login,
                )
                .and(
                  where.eq('password', password),
                ),
          );

      if (result != null) {
        return User(
          id: (result['_id'] as ObjectId).toJson(),
          login: result['login'] as String,
          password: result['senha'] as String,
          name: result['name'] as String,
        );
      }
    } catch (e) {
      print(e);
      throw AuthExceptions.serverError('Erro ao buscar usuario');
    }

    throw AuthExceptions.notFound();

  }
}
