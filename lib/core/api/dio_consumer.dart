import 'dart:convert';
import 'dart:io';
import 'package:amit_task/core/api/api_consumer.dart';
import 'package:amit_task/core/api/app_interceptors.dart';
import 'package:amit_task/core/api/end_points.dart';
import 'package:amit_task/core/api/status_code.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:amit_task/app/injection_container.dart'as di;
class DioConsumer implements ApiConsumer {
  final Dio client;
  DioConsumer({required this.client}) {
    (client.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      .. receiveDataWhenStatusError= true
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < StatusCode.internetServerError;
      };
    client.interceptors.add(di.sl<AppInterceptors>());
    if (kDebugMode) {
      client.interceptors.add(di.sl<LogInterceptor>());
    }
  }
  @override
  Future get(String path, {Map<String, dynamic>? queryParameters})async{
    try {
      final response = await client.get(path);
      return jsonDecode(response.data.toString());
    } on DioError catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }
}
