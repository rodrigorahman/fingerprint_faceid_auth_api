
import 'dart:convert';

import 'package:crypto/crypto.dart';

class CriptyHelper {

  static String generateSHA256Hash(String str){
    final bytes = utf8.encode(str);
    return sha256.convert(bytes).toString();
  }
  
}