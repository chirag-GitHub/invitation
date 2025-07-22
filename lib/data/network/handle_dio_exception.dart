import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/main.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

class HandleDioException implements Exception {
  late String errorMessage;

  HandleDioException.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorMessage = S.current.requestToTheServerWasCancelled;
        // errorMessage = 'Request to the server was cancelled.';
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = S.current.connectionTimedOut;
        // errorMessage = 'Connection timed out.';
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = S.current.receivingTimeoutOccurred;
        // errorMessage = 'Receiving timeout occurred.';
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = S.current.requestSendTimeout;
        // errorMessage = 'Request send timeout.';
        break;
      case DioExceptionType.badResponse:
        errorMessage =
            _handleStatusCode(dioError.response?.statusCode, dioError);
        break;
      case DioExceptionType.connectionError:
        errorMessage = S.current.noInternetConnection;
        // errorMessage = 'No Internet.';
        break;
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          errorMessage = S.current.noInternetConnection;
          // errorMessage = 'No Internet.';
          break;
        }
        errorMessage = S.current.unexpectedErrorOccurred;
        // errorMessage = 'Unexpected error occurred.';
        break;
      default:
        errorMessage = S.current.somethingWentWrong;
        break;
    }
  }

  String _handleStatusCode(int? statusCode, DioException dioError) {
    switch (statusCode) {
      case 400:
        return S.current.badRequest;
      // return 'Bad request.';
      case 401:
        if (SC.isLogin != null && SC.isLogin!) {
          showDialog(
            barrierDismissible: false,
            context: navigatorKey.currentContext!,
            builder: (context) {
              return Theme(
                data: Theme.of(context)
                    .copyWith(dialogBackgroundColor: Colors.orange),
                child: AlertDialog(
                  title: Text(S.current.sessionExpired.split(',').first),
                  content: Text(S.current.sessionExpired),
                  actions: [
                    ButtonView(
                      color: Colors.red,
                      text: S.current.logout,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: ThemeColor.whiteColor),
                      onPressed: () {
                        SC.appLogout();
                        Navigator.pushNamedAndRemoveUntil(
                            context, RoutesName.loginScreen, (route) => false);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        }
        return S.current.sessionExpired;
      case 403:
        return 'The authenticated user is not allowed to access the specified API endpoint.';
      case 404:
        return S.current.resourceNotFound;
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.';
      case 422:
        return dioError.response?.data['message'] ??
            S.current.somethingWentWrong;
      case 429:
        return S.current.toManyAttempt;
      case 500:
        return dioError.response?.data['message'] ??
            S.current.somethingWentWrong;
      case 521:
        return dioError.response?.data['message'] ??
            S.current.somethingWentWrong;
      default:
        return S.current.somethingWentWrong;
    }
  }

  @override
  String toString() => errorMessage;
}
