// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../database/database_connection.dart';
import 'fingerprint_faceid_config.dart';
import '../database/i_database_connection.dart';
import '../../modules/user/presenter/usecases/i_login_with_email_password.dart';
import '../../modules/user/infra/datasource/i_user_datasource.dart';
import '../../modules/user/domain/repositories/i_user_repository.dart';
import '../../modules/user/presenter/controller/login_controller.dart';
import '../../modules/user/domain/usecases/login_with_email_password.dart';
import '../../modules/user/data/datasource/user_datasource.dart';
import '../../modules/user/infra/repository/user_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IDatabaseConnection>(
      () => DatabaseConnection(get<FingerprintFaceidConfig>()));
  gh.factory<IUserDatasource>(() => UserDatasource(get<IDatabaseConnection>()));
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<IUserDatasource>()));
  gh.factory<ILoginWithEmailPassword>(
      () => LoginWithEmailPassword(get<IUserRepository>()));
  gh.factory<LoginController>(
      () => LoginController(get<ILoginWithEmailPassword>()));
  return get;
}
