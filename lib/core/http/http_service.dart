import 'package:http/http.dart';

import 'config_api.dart';

class HttpService {
  final Client _client;
  final ConfigApi _configApi;
  final String baseUrl;

  HttpService({
    Client? client,
    ConfigApi? configApi,
    required this.baseUrl,
  })  : _client = client ?? Client(),
        _configApi = configApi ?? ConfigApi();

  Future<Response> put({
    required String endpoint,
    Map<String, String>? headers,
    String body = '',
  }) {
    return _client.put(
      Uri.parse(baseUrl + endpoint),
      headers: headers ?? _configApi.headers,
      body: body,
    );
  }

  Future<Response> get({
    required String endpoint,
    Map<String, String>? headers,
  }) {
    return _client.get(
      Uri.parse(baseUrl + endpoint),
      headers: headers ?? _configApi.headers,
    );
  }

  Future<Response> post({
    required String endpoint,
    Map<String, String>? headers,
   Object? body,
  }) {
    return _client.post(
      Uri.parse(baseUrl + endpoint),
      headers: headers ?? _configApi.headers,
      body: body,
    );
  }

  Future<Response> delete({
    required String endpoint,
    Map<String, String>? headers,
  }) {
    return _client.delete(
      Uri.parse(baseUrl + endpoint),
      headers: headers ?? _configApi.headers,
    );
  }
}
