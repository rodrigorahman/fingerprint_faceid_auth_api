import 'package:dartz/dartz.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/domain/entities/user.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/domain/repositories/i_user_repository.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/domain/usecases/login_with_email_password.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/exceptions/auth_exceptions.dart';
import 'package:fingerprint_faceid_auth_api/modules/user/presenter/view_models/user_login_view_model.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {

  IUserRepository userRepository;

  setUp((){
    userRepository = MockUserRepository();
  });

  test('login with email password ...', () async {
    when(userRepository.findUserByLoginPassword(any, any)).thenAnswer((_) async => const User(id: 'idX'));
    // chamada do metodo
    final loginWithEmailPassword = LoginWithEmailPassword(userRepository);
    final result = await loginWithEmailPassword.login(UserLoginViewModel(login: '123', password: '123'));
    
    verify(userRepository.findUserByLoginPassword(any, any)).called(1);

    expect(result, equals(right('idX')));
  });
  
  test('should return error validate ...', () async {
    when(userRepository.findUserByLoginPassword(any, any)).thenAnswer((_) async => const User(id: 'idX'));
    
    // chamada do metodo
    final loginWithEmailPassword = LoginWithEmailPassword(userRepository);
    final result = await loginWithEmailPassword.login(UserLoginViewModel());
    
    verifyNever(userRepository.findUserByLoginPassword(any, any));

    expect(result.fold(id, id), isA<AuthExceptionsValidatorError>());
  });

   test('should return server error ...', () async {
    when(userRepository.findUserByLoginPassword(any, any)).thenThrow(AuthExceptions.serverError('Erro Ao buscar dados'));
    
    // chamada do metodo
    final loginWithEmailPassword = LoginWithEmailPassword(userRepository);
    final result = await loginWithEmailPassword.login(UserLoginViewModel(login: '123', password: '123'));
    
    verify(userRepository.findUserByLoginPassword(any, any)).called(1);

    expect(result.fold(id, id), isA<AuthExceptionsServerError>());
  });

    test('should return Exception ...', () async {
    when(userRepository.findUserByLoginPassword(any, any)).thenThrow(Exception());
    
    // chamada do metodo
    final loginWithEmailPassword = LoginWithEmailPassword(userRepository);
    final result = await loginWithEmailPassword.login(UserLoginViewModel(login: '123', password: '123'));
    
    verify(userRepository.findUserByLoginPassword(any, any)).called(1);

    expect(result.fold(id, id), isA<AuthExceptionsServerError>());
  });
}