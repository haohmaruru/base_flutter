import 'package:base_flutter/data/exception/api_exception.dart';
import 'package:base_flutter/data/model/response/api_data_response.dart';
import 'package:base_flutter/data/model/response/api_response.dart';
import 'package:base_flutter/data/remote/rest_client.dart';
import 'package:base_flutter/di/di.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';

abstract class BaseRemoteDataSource {
  final _restClient = di.get<RestClient>();

  Future<dynamic> getWithCustomUrl(String customUrl, String path, {Map<String, dynamic>? params}) async {
    final response = await _restClient.getDio(customUrl: customUrl).get(path, queryParameters: params);
    return response.data;
  }

  Future<ApiDataResponse> get(String path, {Map<String, dynamic>? params}) async {
    final response = await _restClient.getDio().get(path, queryParameters: params);
    return _handleResponse(response);
  }

  Future<ApiDataResponse> post(String path, {data, bool enableCache = false}) async {
    final response = await _restClient.getDio().post(path, data: data);
    return _handleResponse(response);
  }

  Future<ApiDataResponse> put(String path, {data}) async {
    final response = await _restClient.getDio().put(path, data: data);
    return _handleResponse(response);
  }

  Future<ApiDataResponse> delete(String path, {data}) async {
    final response = await _restClient.getDio().delete(path, data: data);
    return _handleResponse(response);
  }

  Future<ApiDataResponse> postUpload(String path, {data}) async {
    final response = await _restClient.getDio(isUpload: true).post(path, data: data);
    return _handleResponse(response);
  }

  ApiDataResponse _handleResponse(dio.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        var apiResponse = ApiResponse.fromJson(response.data);
        return ApiDataResponse(apiResponse.data);
      default:
        debugPrint(response.data.toString());
        var apiResponse = ApiResponse.fromJson(response.data);
        throw ApiException(statusCode: apiResponse.code, message: apiResponse.message);
    }
  }
}
