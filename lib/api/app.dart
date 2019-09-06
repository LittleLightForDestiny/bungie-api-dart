import '../helpers/http.dart';
import '../responses/api_usage_response.dart';
import '../responses/ienumerable_of_application_response.dart';

class App {
  /// Get API usage by application for time frame specified. You can go as far back as 30 days ago, and can ask for up to a 48 hour window of time in a single request. You must be authenticated with at least the ReadUserData permission to access this endpoint.
  static Future<ApiUsageResponse> getApplicationApiUsage(
    HttpClient client,
    int applicationId,
    String end,
    String start,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['end'] = end;
    params['start'] = start;
    HttpClientConfig config = HttpClientConfig(
      'GET',
      "/App/ApiUsage/${applicationId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ApiUsageResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }

  /// Get list of applications created by Bungie.
  static Future<IEnumerableOfApplicationResponse> getBungieApplications(
    HttpClient client,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET',
      "/App/FirstParty/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return IEnumerableOfApplicationResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
}
