import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'network.dart';

/// Class for handling network API requests.
class DioApiServicesImpl implements BaseApiServicesRepo {
  /// Sends a GET request to the specified [url] and returns the response.
  ///
  /// Throws a [NoInternetException] if there is no internet connection.
  /// Throws a [FetchDataException] if the network request times out.

  late final Dio _dio;

  DioApiServicesImpl()
      : _dio = Dio(
          BaseOptions(
            baseUrl: Endpoints.baseURL,
            connectTimeout: Endpoints.connectionTimeout,
            receiveTimeout: Endpoints.receiveTimeout,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseBody: true,
              responseHeader: false,
              error: true,
              compact: true,
              maxWidth: 90,
              enabled: kDebugMode,
              filter: (options, args) {
                // don't print requests with uris containing '/posts'
                if (options.path.contains('/posts')) {
                  return false;
                }
                // don't print responses with unit8 list data
                return !args.isResponse || !args.hasUint8ListData;
              },
            ),
          ]);

  @override
  Future<Response> getApi(String url, {data}) async {
    try {
      final response = await _dio.get(url, queryParameters: data);
      return response;
    } on DioException catch (err) {
      final errorMessage = HandleDioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      debugPrint(e.toString());
      throw e.toString();
    }
  }

  @override
  Future<Response> postApi(String url, {data, queryParameters}) async {
    try {
      final response =
          await _dio.post(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (err) {
      final errorMessage = HandleDioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      debugPrint(e.toString());
      throw e.toString();
    }
  }

  @override
  Future<Response> deleteApi(String url, {data}) async {
    try {
      final response = await _dio.delete(url);
      return response;
    } on DioException catch (err) {
      final errorMessage = HandleDioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      debugPrint(e.toString());
      throw e.toString();
    }
  }
}
