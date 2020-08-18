
import 'package:fingerprint_faceid_auth_api/application/routers/i_router.dart';
import 'package:fingerprint_faceid_auth_api/fingerprint_faceid_auth_api.dart';

class UserRouter implements IRouter {
  
  @override
  void configure(Router router) {
    router
      .route("/example")
      .linkFunction((request) async {
        return Response.ok({"Tag": "Hello World"});
      });

    router
      .route("/example2")
      .linkFunction((request) async {
        return Response.ok({"Tag": "Hello World 2"});
      });
  }
  
}