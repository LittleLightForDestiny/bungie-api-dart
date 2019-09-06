import '../helpers/http.dart';
import '../responses/celist_of_global_alert_response.dart';

class Core {
  /// Gets any active global alert for display in the forum banners, help pages, etc. Usually used for DOC alerts.
  static Future<CEListOfGlobalAlertResponse> getGlobalAlerts(
    HttpClient client,
    bool includestreaming,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['includestreaming'] = includestreaming;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GlobalAlerts/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return CEListOfGlobalAlertResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
}
