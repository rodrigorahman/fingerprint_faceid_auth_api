import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exceptions.freezed.dart';

@freezed
abstract class AuthExceptions with _$AuthExceptions {
   factory AuthExceptions.validatorError(List<String> errors) = AuthExceptionsValidatorError;
   factory AuthExceptions.serverError(String message) = AuthExceptionsServerError;
   factory AuthExceptions.notFound() = AuthExceptionsNotFound;
}