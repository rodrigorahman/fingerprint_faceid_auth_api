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
import '../../modules/user/domain/repositories/i_user_repository.dart';
import '../../modules/user/domain/usecases/login_with_email_password.dart';

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
  gh.factory<ILoginWithEmailPassword>(
      () => LoginWithEmailPassword(get<IUserRepository>()));
  return get;
}
