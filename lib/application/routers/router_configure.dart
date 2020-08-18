
import 'package:fingerprint_faceid_auth_api/application/routers/i_router.dart';
import 'package:fingerprint_faceid_auth_api/fingerprint_faceid_auth_api.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/user_router.dart';

class RouterConfigure {

  final Router _router;
  final List<IRouter> routers = [
    UserRouter(),
  ];

  RouterConfigure(this._router);
  
  void configure() => routers.forEach((r) => r.configure(_router));
}