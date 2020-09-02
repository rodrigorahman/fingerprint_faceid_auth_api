
import 'package:jaguar_jwt/jaguar_jwt.dart';

class JwtHelper {
  static String generateJWT(String userId){
    final claimSet = JwtClaim(
      issuer: 'http://localhost',
      subject: userId,
      expiry: DateTime.now().add(const Duration(days: 1)),
      otherClaims: <String, dynamic>{},
      maxAge: const Duration(days: 1),
    );

    return 'Bearer ${issueJwtHS256(claimSet, 'rodrigorahman')}';
  }
}