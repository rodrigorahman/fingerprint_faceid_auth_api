// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthExceptionsTearOff {
  const _$AuthExceptionsTearOff();

// ignore: unused_element
  AuthExceptionsValidatorError validatorError(List<String> errors) {
    return AuthExceptionsValidatorError(
      errors,
    );
  }

// ignore: unused_element
  AuthExceptionsServerError serverError(String message) {
    return AuthExceptionsServerError(
      message,
    );
  }

// ignore: unused_element
  AuthExceptionsNotFound notFound() {
    return AuthExceptionsNotFound();
  }
}

// ignore: unused_element
const $AuthExceptions = _$AuthExceptionsTearOff();

mixin _$AuthExceptions {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validatorError(List<String> errors),
    @required Result serverError(String message),
    @required Result notFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validatorError(List<String> errors),
    Result serverError(String message),
    Result notFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validatorError(AuthExceptionsValidatorError value),
    @required Result serverError(AuthExceptionsServerError value),
    @required Result notFound(AuthExceptionsNotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validatorError(AuthExceptionsValidatorError value),
    Result serverError(AuthExceptionsServerError value),
    Result notFound(AuthExceptionsNotFound value),
    @required Result orElse(),
  });
}

abstract class $AuthExceptionsCopyWith<$Res> {
  factory $AuthExceptionsCopyWith(
          AuthExceptions value, $Res Function(AuthExceptions) then) =
      _$AuthExceptionsCopyWithImpl<$Res>;
}

class _$AuthExceptionsCopyWithImpl<$Res>
    implements $AuthExceptionsCopyWith<$Res> {
  _$AuthExceptionsCopyWithImpl(this._value, this._then);

  final AuthExceptions _value;
  // ignore: unused_field
  final $Res Function(AuthExceptions) _then;
}

abstract class $AuthExceptionsValidatorErrorCopyWith<$Res> {
  factory $AuthExceptionsValidatorErrorCopyWith(
          AuthExceptionsValidatorError value,
          $Res Function(AuthExceptionsValidatorError) then) =
      _$AuthExceptionsValidatorErrorCopyWithImpl<$Res>;
  $Res call({List<String> errors});
}

class _$AuthExceptionsValidatorErrorCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements $AuthExceptionsValidatorErrorCopyWith<$Res> {
  _$AuthExceptionsValidatorErrorCopyWithImpl(
      AuthExceptionsValidatorError _value,
      $Res Function(AuthExceptionsValidatorError) _then)
      : super(_value, (v) => _then(v as AuthExceptionsValidatorError));

  @override
  AuthExceptionsValidatorError get _value =>
      super._value as AuthExceptionsValidatorError;

  @override
  $Res call({
    Object errors = freezed,
  }) {
    return _then(AuthExceptionsValidatorError(
      errors == freezed ? _value.errors : errors as List<String>,
    ));
  }
}

class _$AuthExceptionsValidatorError implements AuthExceptionsValidatorError {
  _$AuthExceptionsValidatorError(this.errors) : assert(errors != null);

  @override
  final List<String> errors;

  @override
  String toString() {
    return 'AuthExceptions.validatorError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthExceptionsValidatorError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @override
  $AuthExceptionsValidatorErrorCopyWith<AuthExceptionsValidatorError>
      get copyWith => _$AuthExceptionsValidatorErrorCopyWithImpl<
          AuthExceptionsValidatorError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validatorError(List<String> errors),
    @required Result serverError(String message),
    @required Result notFound(),
  }) {
    assert(validatorError != null);
    assert(serverError != null);
    assert(notFound != null);
    return validatorError(errors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validatorError(List<String> errors),
    Result serverError(String message),
    Result notFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validatorError != null) {
      return validatorError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validatorError(AuthExceptionsValidatorError value),
    @required Result serverError(AuthExceptionsServerError value),
    @required Result notFound(AuthExceptionsNotFound value),
  }) {
    assert(validatorError != null);
    assert(serverError != null);
    assert(notFound != null);
    return validatorError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validatorError(AuthExceptionsValidatorError value),
    Result serverError(AuthExceptionsServerError value),
    Result notFound(AuthExceptionsNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validatorError != null) {
      return validatorError(this);
    }
    return orElse();
  }
}

abstract class AuthExceptionsValidatorError implements AuthExceptions {
  factory AuthExceptionsValidatorError(List<String> errors) =
      _$AuthExceptionsValidatorError;

  List<String> get errors;
  $AuthExceptionsValidatorErrorCopyWith<AuthExceptionsValidatorError>
      get copyWith;
}

abstract class $AuthExceptionsServerErrorCopyWith<$Res> {
  factory $AuthExceptionsServerErrorCopyWith(AuthExceptionsServerError value,
          $Res Function(AuthExceptionsServerError) then) =
      _$AuthExceptionsServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$AuthExceptionsServerErrorCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements $AuthExceptionsServerErrorCopyWith<$Res> {
  _$AuthExceptionsServerErrorCopyWithImpl(AuthExceptionsServerError _value,
      $Res Function(AuthExceptionsServerError) _then)
      : super(_value, (v) => _then(v as AuthExceptionsServerError));

  @override
  AuthExceptionsServerError get _value =>
      super._value as AuthExceptionsServerError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(AuthExceptionsServerError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$AuthExceptionsServerError implements AuthExceptionsServerError {
  _$AuthExceptionsServerError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthExceptions.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthExceptionsServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $AuthExceptionsServerErrorCopyWith<AuthExceptionsServerError> get copyWith =>
      _$AuthExceptionsServerErrorCopyWithImpl<AuthExceptionsServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validatorError(List<String> errors),
    @required Result serverError(String message),
    @required Result notFound(),
  }) {
    assert(validatorError != null);
    assert(serverError != null);
    assert(notFound != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validatorError(List<String> errors),
    Result serverError(String message),
    Result notFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validatorError(AuthExceptionsValidatorError value),
    @required Result serverError(AuthExceptionsServerError value),
    @required Result notFound(AuthExceptionsNotFound value),
  }) {
    assert(validatorError != null);
    assert(serverError != null);
    assert(notFound != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validatorError(AuthExceptionsValidatorError value),
    Result serverError(AuthExceptionsServerError value),
    Result notFound(AuthExceptionsNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class AuthExceptionsServerError implements AuthExceptions {
  factory AuthExceptionsServerError(String message) =
      _$AuthExceptionsServerError;

  String get message;
  $AuthExceptionsServerErrorCopyWith<AuthExceptionsServerError> get copyWith;
}

abstract class $AuthExceptionsNotFoundCopyWith<$Res> {
  factory $AuthExceptionsNotFoundCopyWith(AuthExceptionsNotFound value,
          $Res Function(AuthExceptionsNotFound) then) =
      _$AuthExceptionsNotFoundCopyWithImpl<$Res>;
}

class _$AuthExceptionsNotFoundCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements $AuthExceptionsNotFoundCopyWith<$Res> {
  _$AuthExceptionsNotFoundCopyWithImpl(AuthExceptionsNotFound _value,
      $Res Function(AuthExceptionsNotFound) _then)
      : super(_value, (v) => _then(v as AuthExceptionsNotFound));

  @override
  AuthExceptionsNotFound get _value => super._value as AuthExceptionsNotFound;
}

class _$AuthExceptionsNotFound implements AuthExceptionsNotFound {
  _$AuthExceptionsNotFound();

  @override
  String toString() {
    return 'AuthExceptions.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthExceptionsNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validatorError(List<String> errors),
    @required Result serverError(String message),
    @required Result notFound(),
  }) {
    assert(validatorError != null);
    assert(serverError != null);
    assert(notFound != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validatorError(List<String> errors),
    Result serverError(String message),
    Result notFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validatorError(AuthExceptionsValidatorError value),
    @required Result serverError(AuthExceptionsServerError value),
    @required Result notFound(AuthExceptionsNotFound value),
  }) {
    assert(validatorError != null);
    assert(serverError != null);
    assert(notFound != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validatorError(AuthExceptionsValidatorError value),
    Result serverError(AuthExceptionsServerError value),
    Result notFound(AuthExceptionsNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class AuthExceptionsNotFound implements AuthExceptions {
  factory AuthExceptionsNotFound() = _$AuthExceptionsNotFound;
}
