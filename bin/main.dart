import 'package:fingerprint_faceid_auth_api/fingerprint_faceid_auth_api.dart';

Future main() async {
  final app = Application<FingerprintFaceidAuthApiChannel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 8888
      ..options.address = '0.0.0.0';

  await app.startOnCurrentIsolate();

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}