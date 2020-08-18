import 'package:mongo_dart/mongo_dart.dart';

abstract class IDatabaseConnection {

  Future<Db> openConnection();

}