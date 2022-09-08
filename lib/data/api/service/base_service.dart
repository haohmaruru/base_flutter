import 'package:dio/dio.dart' as dio;

import '../exception/api_exception.dart';
import '../model/api_response.dart';
import '../model/data_response.dart';
import '../rest_client.dart';

abstract class BaseService {
  Future<dynamic> getWithCustomUrl(String customUrl, String path,
      {Map<String, dynamic>? params}) async {
    final response = await RestClient.getDio(customUrl: customUrl)
        .get(path, queryParameters: params);
    return response.data;
  }

  Future<DataResponse> get(String path, {Map<String, dynamic>? params}) async {
    final response =
        await RestClient.getDio().get(path, queryParameters: params);
    return _handleResponse(response);
  }

  Future<DataResponse> post(String path,
      {data, bool enableCache = false}) async {
    final response = await RestClient.getDio().post(path, data: data);
    return _handleResponse(response);
  }

  Future<DataResponse> put(String path, {data}) async {
    final response = await RestClient.getDio().put(path, data: data);
    return _handleResponse(response);
  }

  Future<DataResponse> delete(String path, {data}) async {
    final response = await RestClient.getDio().delete(path, data: data);
    return _handleResponse(response);
  }

  Future<DataResponse> postUpload(String path, {data}) async {
    final response =
        await RestClient.getDio(isUpload: true).post(path, data: data);
    return _handleResponse(response);
  }

  DataResponse _handleResponse(dio.Response response) {
    switch (response.statusCode) {
      case 200:
        var apiResponse = ApiResponse.fromJson(response.data);
        return DataResponse(apiResponse.data, code: apiResponse.code!);
      default:
        var apiResponse = ApiResponse.fromJson(response.data);
        throw ApiException(
          statusCode: apiResponse.code,
          message: apiResponse.message,
        );
    }
  }
}
