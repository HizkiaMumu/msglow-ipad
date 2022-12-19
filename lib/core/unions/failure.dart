import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.requestCancelled() = RequestCancelled;

  const factory Failure.unauthorisedRequest() = UnauthorisedRequest;

  const factory Failure.badRequest() = BadRequest;

  const factory Failure.notFound(String reason) = NotFound;

  const factory Failure.methodNotAllowed() = MethodNotAllowed;

  const factory Failure.notAcceptable() = NotAcceptable;

  const factory Failure.requestTimeout() = RequestTimeout;

  const factory Failure.sendTimeout() = SendTimeout;

  const factory Failure.conflict() = Conflict;

  const factory Failure.internalServerError() = InternalServerError;

  const factory Failure.notImplemented() = NotImplemented;

  const factory Failure.serviceUnavailable() = ServiceUnavailable;

  const factory Failure.noInternetConnection() = NoInternetConnection;

  const factory Failure.formatException() = FormatException;

  const factory Failure.unableToProcess() = UnableToProcess;

  const factory Failure.defaultError(String error) = DefaultError;

  const factory Failure.unexpectedError() = UnexpectedError;

  static Failure getException(error) {
    if (error is Exception) {
      try {
        late Failure failure;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              failure = const Failure.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              failure = const Failure.requestTimeout();
              break;
            case DioErrorType.other:
              failure = const Failure.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              failure = const Failure.sendTimeout();
              break;
            case DioErrorType.response:
              switch (error.response?.statusCode) {
                case 400:
                  failure = const Failure.unauthorisedRequest();
                  break;
                case 401:
                  failure = const Failure.unauthorisedRequest();
                  break;
                case 403:
                  failure = const Failure.unauthorisedRequest();
                  break;
                case 404:
                  failure = const Failure.notFound("Not found");
                  break;
                case 409:
                  failure = const Failure.conflict();
                  break;
                case 408:
                  failure = const Failure.requestTimeout();
                  break;
                case 500:
                  failure = const Failure.internalServerError();
                  break;
                case 503:
                  failure = const Failure.serviceUnavailable();
                  break;
                default:
                  var responseCode = error.response?.statusCode;
                  failure = Failure.defaultError(
                    "Received invalid status code: $responseCode",
                  );
              }
              break;
            case DioErrorType.sendTimeout:
              failure = const Failure.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          failure = const Failure.noInternetConnection();
        } else {
          failure = const Failure.unexpectedError();
        }
        return failure;
      } on FormatException catch (_) {
        // Helper.printError(e.toString());
        return const Failure.formatException();
      } catch (_) {
        return const Failure.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const Failure.unableToProcess();
      } else {
        return const Failure.unexpectedError();
      }
    }
  }

  static String getErrorMessage(Failure failure) {
    var errorMessage = "";
    failure.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorisedRequest: () {
      errorMessage = "Unauthorised request";
    }, unexpectedError: () {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "No internet connection";
    }, conflict: () {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: () {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: () {
      errorMessage = "Unable to process the data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "Unexpected error occurred";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}
