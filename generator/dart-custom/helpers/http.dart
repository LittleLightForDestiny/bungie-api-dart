class HttpClientConfig {
  String method;
  String url;
  Map<String, dynamic> params;
  Object body;
  HttpClientConfig(String this.method, String this.url, Map<String, dynamic> this.params, [Object this.body]);
}

/**
 * A generic, minimal type for providing an HTTP client function.
 * This gets the necessary config provided as an argument, and then
 * should produce a promise for the parsed JSON as a result. The API
 * helper functions will use this to return the right type.
 */
abstract class HttpClient{
  Future<Object> request(HttpClientConfig config);
}
