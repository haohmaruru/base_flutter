import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import 'base_interceptor.dart';

class Dio2CurlInterceptor extends BaseInterceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    try {
      log('COPY CURL and send it to BE');
      log(cURLRepresentation(options));
    } catch (e) {
      log('Create CURL failure!! - ' + e.toString());
    }
    super.onRequest(options, handler);
  }

  @override
  int get priority => BaseInterceptor.curlInterceptorPriority;
}

// A simple utility function to dump `curl` from "Dio" requests
String dio2Curl(RequestOptions requestOption) {
  var curl = '';

  // Add PATH + REQUEST_METHOD
  final String url = requestOption.path.startsWith('https://')
      ? requestOption.path
      : '${requestOption.baseUrl}${requestOption.path}';
  curl += 'curl --request ${requestOption.method} \'$url\'';

  // Include headers
  for (var key in requestOption.headers.keys) {
    curl += ' -H \'$key: ${requestOption.headers[key]}\'';
  }

  // Include data if there is data
  if (requestOption.data != null) {
    curl += ' --data-binary \'${requestOption.data}\'';
  }

  curl += ' --insecure'; //bypass https verification

  return curl;
}

String cURLRepresentation(RequestOptions options) {
  List<String> components = ['curl -i'];
  //if (options.method.toUpperCase() == 'GET') {
  components.add('-X ${options.method}');
  //}

  options.headers.forEach((k, v) {
    if (k != 'Cookie') {
      components.add('-H \'$k: $v\'');
    }
  });

  if (options.method.toUpperCase() != 'GET') {
    if (options.contentType == Headers.formUrlEncodedContentType) {
      components.add(extractFormUrlEncoded(options.data));
    } else if (options.data is FormData) {
      components.add(extractFormData({}, options.data));
    } else {
      var data = json.encode(options.data);
      data = data.replaceAll('\'', '\\\'');
      components.add('-d \'$data\'');
    }
  }

  components.add('\'${options.uri.toString()}\'');

  return components.join('\\\n\t');
}

extension Curl on RequestOptions {
  String toCurlCmd() {
    String cmd = 'curl';

    String header = headers
        .map((key, value) {
          if (key == 'content-type' &&
              value.toString().contains('multipart/form-data')) {
            value = 'multipart/form-data;';
          }
          return MapEntry(key, "-H '$key: $value'");
        })
        .values
        .join(' ');
    String url = '$baseUrl$path';
    if (queryParameters.isNotEmpty) {
      String query = queryParameters
          .map((key, value) {
            return MapEntry(key, '$key=$value');
          })
          .values
          .join('&');

      url += (url.contains('?')) ? query : '?$query';
    }
    if (method == 'GET') {
      cmd += " $header '$url'";
    } else {
      Map<String, dynamic> files = {};
      String postData = "-d ''";
      if (data != null) {
        if (data is FormData) {
          postData = extractFormData(files, data);
        } else if (data is Map<String, dynamic>) {
          files.addAll(data);

          if (files.isNotEmpty) {
            postData = "-d '${json.encode(files).toString()}'";
          }
        }
      }

      String method = this.method.toString();
      cmd += " -X $method $postData $header '$url'";
    }

    return cmd;
  }
}

String extractFormData(Map<String, dynamic> files, FormData fData) {
  for (var element in fData.files) {
    MultipartFile file = element.value;
    files[element.key] = '@${file.filename}';
  }
  for (var element in fData.fields) {
    files[element.key] = element.value;
  }
  if (files.isNotEmpty) {
    return files
        .map((key, value) => MapEntry(key, "-F '$key=$value'"))
        .values
        .join(' ');
  }
  return '';
}

String extractFormUrlEncoded(Map<String, dynamic> fData) {
  return fData
      .map((key, value) => MapEntry(key, "--data-urlencode '$key=$value'"))
      .values
      .join(' ');
}
