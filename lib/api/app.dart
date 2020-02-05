import '../helpers/http.dart';
import '../responses/api_usage_response.dart';
import '../responses/ienumerable_of_application_response.dart';
class App{
    /// Get API usage by application for time frame specified. You can go as far back as 30 days ago, and can ask for up to a 48 hour window of time in a single request. You must be authenticated with at least the ReadUserData permission to access this endpoint.
    static Future<ApiUsageResponse> getApplicationApiUsage (
        HttpClient client,
        int applicationId,
        String end,
        String start,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _applicationId = '$applicationId';
        params['end'] = end;
        params['start'] = start;
        final HttpClientConfig config = HttpClientConfig('GET', '/App/ApiUsage/$_applicationId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ApiUsageResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get list of applications created by Bungie.
    static Future<IEnumerableOfApplicationResponse> getBungieApplications (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/App/FirstParty/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return IEnumerableOfApplicationResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}