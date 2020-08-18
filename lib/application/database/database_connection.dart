
import 'package:fingerprint_faceid_auth_api/application/configs/fingerprint_faceid_config.dart';
import 'package:fingerprint_faceid_auth_api/application/database/i_database_connection.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@Injectable(as: IDatabaseConnection)
class DatabaseConnection implements IDatabaseConnection {

  final FingerprintFaceidConfig config;
  
  DatabaseConnection(this.config);

  @override
  Future<Db> openConnection() async {
    final databaseEnv = config.database;
    final db = Db('mongodb://${databaseEnv.host}:${databaseEnv.port}/${databaseEnv.databaseName}');
    await db.open();
    return db;
  }
}