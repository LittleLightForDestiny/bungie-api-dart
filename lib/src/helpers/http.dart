class HttpClientConfig {
  String method;
  String url;
  Map<String, dynamic> params;
  dynamic body;
  String bodyContentType;
  Map<String, String> headers;
  HttpClientConfig(
    this.method,
    this.url, {
    this.params,
    this.body,
    this.bodyContentType,
    this.headers,
  });
}

/// A generic, minimal type for providing an HTTP client function.
/// This gets the necessary config provided as an argument, and then
/// should produce a promise for the parsed JSON as a result. The API
/// helper functions will use this to return the right type.
abstract class HttpClient {
  Future<HttpResponse> request(HttpClientConfig config);
}

class HttpResponse {
  final dynamic mappedBody;
  final int statusCode;
  HttpResponse(this.mappedBody, this.statusCode);
}
