import '../helpers/http.dart';
import '../responses/celist_of_global_alert_response.dart';
class Core{
    static Future<CEListOfGlobalAlertResponse> getGlobalAlerts (
        HttpClient client,
        bool includestreaming,
    ) {
        Map<String, String> params = new Map();
        params['includestreaming'] = "${ includestreaming }";
        HttpClientConfig config = HttpClientConfig('GET', "/GlobalAlerts/", params);
        return client.request(config).then((response){
            return CEListOfGlobalAlertResponse.fromJson(response);
        });
    }
}