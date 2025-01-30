import 'dart:convert';
import 'dart:developer' as developer;

import 'package:crafty_bay/src/network/response/network_response.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  Future<NetworkResponse> getRequest({required String url}) async {
    return _makeRequest(
      requestType: 'GET',
      url: url,
      requestBody: null,
    );
  }

  Future<NetworkResponse> postRequest({
    required String url,
    required Map<String, dynamic> requestBody,
  }) async {
    return _makeRequest(
      requestType: 'POST',
      url: url,
      requestBody: requestBody,
    );
  }

  Future<NetworkResponse> deleteRequest({required String url}) async {
    return _makeRequest(
      requestType: 'DELETE',
      url: url,
      requestBody: null,
    );
  }

  Future<NetworkResponse> _makeRequest({
    required String requestType,
    required String url,
    Map<String, dynamic>? requestBody,
  }) async {
    try {
      Uri uri = Uri.parse(url);
      _logDebug(log: "$requestType URL : $uri");

      final headers = {"Content-Type": "application/json"};
      final body = requestBody != null ? jsonEncode(requestBody) : null;

      http.Response response;
      switch (requestType) {
        case 'GET':
          response = await http.get(uri, headers: headers);
          break;
        case 'POST':
          response = await http.post(uri, headers: headers, body: body);
          break;
        case 'DELETE':
          response = await http.delete(uri, headers: headers);
          break;
        default:
          throw UnsupportedError('Unsupported request type: $requestType');
      }

      _logDebug(log: "$requestType Status Code : ${response.statusCode}");

      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        _logDebug(log: "$requestType Response Data : $decodedResponse");
        return NetworkResponse(
          isSuccess: true,
          statusCode: response.statusCode,
          responseData: decodedResponse,
        );
      } else {
        _logDebug(
            log:
                "$requestType Failed with Status Code : ${response.statusCode}");
        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
          errorMessage:
              "Request failed with status code ${response.statusCode}",
        );
      }
    } catch (e) {
      _logDebug(log: "$requestType Error : ${e.toString()}");
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        errorMessage: e.toString(),
      );
    }
  }

  void _logDebug({required String log}) {
    developer.log(log, name: "Network Service");
  }
}
