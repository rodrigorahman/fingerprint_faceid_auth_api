import 'package:fingerprint_faceid_auth_api/modules/user/domain/repositories/i_user_repository.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/exceptions/auth_exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/presenter/usecases/i_login_with_email_password.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/presenter/view_models/user_login_view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ILoginWithEmailPassword)
class LoginWithEmailPassword implements ILoginWithEmailPassword {
  final IUserRepository _repository;

  LoginWithEmailPassword(this._repository);

  @override
  Future<Either<AuthExceptions, String>> login(UserLoginViewModel loginViewModel) {
    return 
      validate(loginViewModel)
      .traverseFuture((userModel) async {
        final user = await _repository.findUserByLoginPassword(userModel.login, userModel.password);
        return user.id;
      })
      .catchError(
        (error) {
          if (error is AuthExceptions) {
            return left<AuthExceptions, String>(error);
          } else {
            return left<AuthExceptions, String>(AuthExceptions.serverError(error.toString()));
          }
        },
      );
  }

  Either<AuthExceptions, UserLoginViewModel> validate(UserLoginViewModel loginViewModel) {
    final List<String> errors = [];

    if (loginViewModel.login == null || loginViewModel.login == '') {
      errors.add('Login Obrigatório');
    }

    if (loginViewModel.password == null || loginViewModel.password == '') {
      errors.add('Senha Obrigatória');
    }

    if (errors.isNotEmpty) {
      return left(AuthExceptions.validatorError(errors));
    }

    return right(loginViewModel);
  }
}
