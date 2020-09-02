import 'package:fingerprint_faceid_auth_api/application/helpers/jwt_helper.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/presenter/usecases/i_login_with_email_password.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/presenter/view_models/user_login_view_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../fingerprint_faceid_auth_api.dart';
import 'models/user_login_request.dart';

@Injectable()
class LoginController extends ResourceController {
  final ILoginWithEmailPassword _loginWithEmailPassword;

  LoginController(this._loginWithEmailPassword);

  @Operation.post()
  Future<Response> login(@Bind.body() UserLoginRequest request) async {
    final loginViewModel = UserLoginViewModel(login: request.login, password: request.password);
    final result = await _loginWithEmailPassword.login(loginViewModel);

    return result.fold(
      (failure) {
        return failure.when(
          validatorError: (errors) {
            return Response.serverError(body: {'message': 'ValidationError', 'errors': errors});
          },
          serverError: (message) {
            return Response.serverError(body: {'message': message});
          },
          notFound: () {
            return Response.forbidden(body: {'message': 'Login ou senha inválidos'});
          },
        );
      },
      (userId) => Response.ok({
        'access_token' : JwtHelper.generateJWT(userId)
      }),
    );
  }
}
