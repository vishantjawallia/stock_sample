// ignore_for_file: depend_on_referenced_packages, empty_catches, avoid_print

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:stock_sample/api/base_model.dart';

final Dio dio = Dio();

class ApiReference {
  ApiReference._();

  /* -------------------------------- Api Post ------------------------------- */
  static Future<BaseModel> apiGet(
    String? url, {
    bool? auth,
  }) async {
    try {
      Map<String, dynamic> headers = {
        'access-token':
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJkaGFuIiwicGFydG5lcklkIjoiIiwiZXhwIjoxNzA2OTM1MzEyLCJ0b2tlbkNvbnN1bWVyVHlwZSI6IlNFTEYiLCJ3ZWJob29rVXJsIjoiIiwiZGhhbkNsaWVudElkIjoiMTAwMDQ3NTUxNCJ9.COOQ6JLTXgs9KOoIl4q0TjCa_orhPemQft_AFOQl6j9TVfAhROHVgKdAHcuIWjiHf0HOmiY0SeRtdVeo9nC-Ig',
      };
      Options option = Options(
        contentType: "application/json",
        headers: headers,
        receiveTimeout: const Duration(seconds: 3),
      );
      Response response = await dio.get('$url', options: option);
      if (response.statusCode == 200) {
        return BaseModel(data: response.data, msg: "", success: true);
      } else {
        return BaseModel(data: response.data, msg: response.statusMessage, success: false);
      }
    } catch (error) {
      handleError(error);
      return const BaseModel(data: null, msg: 'Exception Ouccer !', success: false);
    }
  }

  /* -------------------------------- Api Post ------------------------------- */
  static Future<BaseModel> apiPost(
    String? url,
    Map<String, dynamic>? body, {
    bool? auth,
  }) async {
    try {
      Map<String, dynamic> headers = {
        'access-token':
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJkaGFuIiwicGFydG5lcklkIjoiIiwiZXhwIjoxNzA2OTM1MzEyLCJ0b2tlbkNvbnN1bWVyVHlwZSI6IlNFTEYiLCJ3ZWJob29rVXJsIjoiIiwiZGhhbkNsaWVudElkIjoiMTAwMDQ3NTUxNCJ9.COOQ6JLTXgs9KOoIl4q0TjCa_orhPemQft_AFOQl6j9TVfAhROHVgKdAHcuIWjiHf0HOmiY0SeRtdVeo9nC-Ig',
      };
      Options option = Options(
        contentType: "application/json",
        headers: headers,
        receiveTimeout: const Duration(seconds: 3),
        persistentConnection: true,
      );
      Response response = await dio.post(
        '$url',
        options: option,
        data: body,
      );
      if (response.statusCode == 200) {
        return BaseModel(data: response.data, msg: "", success: true);
      } else {
        return BaseModel(data: response.data, msg: response.statusMessage, success: false);
      }
    } catch (error) {
      handleError(error);
      return const BaseModel(data: null, msg: 'Exception Ouccer !', success: false);
    }
  }

  static void handleError(dynamic error) {
    if (error is DioException) {
      // DioError is specific to Dio library and provides detailed information about the error
      log('DioError: ${error.message}');
      if (error.response != null) {
        // Handle DioError with response (e.g., server error)
        log('Response data: ${error.response!.data}');
        log('Response status: ${error.response!.statusCode}');
      }
    } else {
      // Handle generic errors
      log('Error: $error');
    }
  }
}
