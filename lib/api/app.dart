import '../helpers/http.dart';
import '../responses/api_usage_response.dart';
import '../responses/ienumerable_of_application_response.dart';
class App{
    static Future<ApiUsageResponse> getApplicationApiUsage (
        HttpClient client,
        int applicationId,
        String end,
        String start,
    ) {
        Map<String, String> params = new Map();
        params['end'] = "${ end }";
        params['start'] = "${ start }";
        HttpClientConfig config = HttpClientConfig('GET', "/App/ApiUsage/${applicationId}/", params);
        return client.request(config).then((response){
            return ApiUsageResponse.fromJson(response);
        });
    }
    static Future<IEnumerableOfApplicationResponse> getBungieApplications (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/App/FirstParty/", params);
        return client.request(config).then((response){
            return IEnumerableOfApplicationResponse.fromJson(response);
        });
    }
}