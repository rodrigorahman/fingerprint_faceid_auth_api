import 'package:dartz/dartz.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/exceptions/auth_exceptions.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/presenter/view_models/user_login_view_model.dart';

abstract class ILoginWithEmailPassword {
  Future<Either<AuthExceptions, String>> login(UserLoginViewModel loginViewModel);
}