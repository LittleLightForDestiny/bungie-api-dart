import '../helpers/http.dart';
import '../responses/celist_of_global_alert_response.dart';
class GlobalAlerts{
    /// Gets any active global alert for display in the forum banners, help pages, etc. Usually used for DOC alerts.
    static Future<CEListOfGlobalAlertResponse> getGlobalAlerts (
        HttpClient client,
        Bool includestreaming,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['includestreaming'] = includestreaming;
        final HttpClientConfig config = HttpClientConfig('GET', '/GlobalAlerts/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return CEListOfGlobalAlertResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}