
import 'package:fingerprint_faceid_auth_api/application/configs/database_connection_config.dart';
import 'package:fingerprint_faceid_auth_api/fingerprint_faceid_auth_api.dart';

class FingerprintFaceidConfig extends Configuration {
  
  DatabaseConnectionConfig database;
  
  FingerprintFaceidConfig(String filename) : super.fromFile(File(filename));
  
}
