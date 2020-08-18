import 'package:fingerprint_faceid_auth_api/application/configs/di_config.dart';
import 'package:fingerprint_faceid_auth_api/application/configs/fingerprint_faceid_config.dart';
import 'package:fingerprint_faceid_auth_api/application/routers/router_configure.dart';
import 'package:fingerprint_faceid_auth_api/fingerprint_faceid_auth_api.dart';
import 'package:get_it/get_it.dart';

/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class FingerprintFaceidAuthApiChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
    
    GetIt.instance.registerLazySingleton(() => FingerprintFaceidConfig(options.configurationFilePath));
    configureDependencies();

  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    RouterConfigure(router)
      .configure();

    return router;
  }
}