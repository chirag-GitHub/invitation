import 'package:dio/dio.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

//* Request methods PUT, POST, PATCH, DELETE needs access token,
//* which needs to be passed with "Authorization" header as Bearer token.
class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {
      options.headers['Authorization'] = 'Bearer ${SC.accessToken}';
      options.headers['X-Language'] = '${SC.userLang}';
      options.headers['app-and-device-info'] = '${SC.appAndDeviceInfo}';
      options.headers['Content-Type'] = 'application/json';
      options.headers['Accept'] = 'application/json';
    }
    super.onRequest(options, handler);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    if (options.method == 'GET') {
      return true;
    } else {
      return true;
    }
  }
}
