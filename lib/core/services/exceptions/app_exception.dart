part of exceptions;

///
/// [AppException]is a app exception
///
class AppException implements Exception {
  final ExceptionType code;
  final String message;
  final Exception? innerException;
  final StackTrace? stackTrace;

  const AppException({
    this.code = ExceptionType.warn,
    required this.message,
  })  : innerException = null,
        stackTrace = null;

  const AppException.withInner({
    this.code = ExceptionType.warn,
    required this.message,
    this.innerException,
    this.stackTrace,
  });

  @override
  String toString() {
    if (innerException == null) {
      return 'AppException $code: $message';
    }

    return 'AppException $code: '
            '$message (Inner exception: $innerException)\n\n' +
        stackTrace.toString();
  }

  factory AppException.handler(dynamic e) {
    String? _message;
    ExceptionType _code;

    switch (e) {
      case ApiException:
        switch (e.code) {

        /// HTTP 400
          case HttpStatus.badRequest:
            _code = ExceptionType.fatal;
            _message = e.message;
            break;

        /// HTTP 401
          case HttpStatus.unauthorized:
            _code = ExceptionType.unauthorizedError;
            _message = e.message;
            break;

        /// HTTP 403
          case HttpStatus.forbidden:
            _code = ExceptionType.forbidden;
            _message = e.message;
            break;

        /// HTTP 404
          case HttpStatus.notFound:
            _code = ExceptionType.notFoundError;
            _message = e.message;
            break;

        /// HTTP 422
          case HttpStatus.unprocessableEntity:
            _code = ExceptionType.validationError;
            _message = e.message;
            break;

        /// HTTP 426
          case HttpStatus.upgradeRequired:
            _code = ExceptionType.forcedUpdate;
            _message = 'Forced version upgrade is required';
            break;

          default:
            _code = ExceptionType.serverError;
            _message = e.code.toString();
        }
        break;

      case SocketException:
      case TimeoutException:
        _code = ExceptionType.serverError;
        _message = e.message;
        break;

      case PlatformException:
      case MissingPluginException:
      case SecureStorageException:
      case SharedStorageException:
        _code = ExceptionType.fatal;
        _message = e.message;
        break;

      case AppException:
        _code = e.code;
        _message = e.message;
        break;

      default:
        _code = ExceptionType.fatal;
        _message = e.toString();
    }

    return AppException(
      message: _message ?? 'AppException',
      code: _code,
    );
  }
}

class UnauthorizedException extends AppException {
  const UnauthorizedException(
    String message, {
    ExceptionType code = ExceptionType.unauthorizedError,
  }) : super(code: code, message: message);
}

class FatalException extends AppException {
  FatalException(
    String target, {
    ExceptionType code = ExceptionType.fatal,
  })  : assert(target.isNotEmpty),
        super(code: code, message: '$target does not exist.');
}

class NotFoundException extends AppException {
  NotFoundException(
    String target, {
    ExceptionType code = ExceptionType.alert,
  })  : assert(target.isNotEmpty),
        super(code: code, message: '$target could not be found.');
}

class NotUniqueException extends AppException {
  NotUniqueException(
    String value, {
    ExceptionType code = ExceptionType.validationError,
  })  : assert(value.isNotEmpty),
        super(code: code, message: '$value is duplicated.');
}

class NullEmptyException extends AppException {
  const NullEmptyException(
    String value, {
    ExceptionType code = ExceptionType.validationError,
  }) : super(code: code, message: '$value is required.');
}

class LengthException extends AppException {
  const LengthException(
    String value,
    int max, {
    ExceptionType code = ExceptionType.validationError,
  })  : assert(max > 0),
        super(code: code, message: 'The maximum value of $value is $max.');
}

class RemovalException extends AppException {
  const RemovalException(
    String value, {
    ExceptionType code = ExceptionType.alert,
  }) : super(code: code, message: '$value could not be deleted.');
}

class ValidationException extends AppException {
  const ValidationException(
    String value, {
    ExceptionType code = ExceptionType.alert,
  }) : super(code: code, message: '$value is an invalid input value.');
}
