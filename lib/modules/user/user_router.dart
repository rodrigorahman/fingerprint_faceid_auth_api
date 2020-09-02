
import 'package:fingerprint_faceid_auth_api/application/routers/i_router.dart';
import 'package:fingerprint_faceid_auth_api/fingerprint_faceid_auth_api.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/presenter/controller/login_controller.dart';
import 'package:get_it/get_it.dart';

class UserRouter implements IRouter {
  
  @override
  void configure(Router router) {
    
    router
      .route("/login")
      .link(() => GetIt.I.get<LoginController>());

    
  }
  
}