import '../helpers/http.dart';
import '../responses/int32_response.dart';
import '../responses/search_result_of_fireteam_summary_response.dart';
import '../responses/search_result_of_fireteam_response_response.dart';
import '../responses/fireteam_response_response.dart';
class Fireteam{
    static Future<int32Response> getActivePrivateClanFireteamCount (
        HttpClient client,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/ActiveCount/", params);
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<SearchResultOfFireteamSummaryResponse> getAvailableClanFireteams (
        HttpClient client,
        int activityType,
        int dateRange,
        int groupId,
        String langFilter,
        int page,
        int platform,
        int publicOnly,
        int slotFilter,
    ) {
        Map<String, String> params = new Map();
        params['langFilter'] = "${ langFilter }";
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/Available/{platform}/{activityType}/{dateRange}/{slotFilter}/{publicOnly}/{page}/", params);
        return client.request(config).then((response){
            return SearchResultOfFireteamSummaryResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfFireteamSummaryResponse> searchPublicAvailableClanFireteams (
        HttpClient client,
        int activityType,
        int dateRange,
        String langFilter,
        int page,
        int platform,
        int slotFilter,
    ) {
        Map<String, String> params = new Map();
        params['langFilter'] = "${ langFilter }";
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Search/Available/${platform}/{activityType}/{dateRange}/{slotFilter}/{page}/", params);
        return client.request(config).then((response){
            return SearchResultOfFireteamSummaryResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfFireteamResponseResponse> getMyClanFireteams (
        HttpClient client,
        bool groupFilter,
        int groupId,
        bool includeClosed,
        String langFilter,
        int page,
        int platform,
    ) {
        Map<String, String> params = new Map();
        params['groupFilter'] = "${ groupFilter }";
        params['langFilter'] = "${ langFilter }";
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/My/{platform}/{includeClosed}/{page}/", params);
        return client.request(config).then((response){
            return SearchResultOfFireteamResponseResponse.fromJson(response);
        });
    }
    static Future<FireteamResponseResponse> getClanFireteam (
        HttpClient client,
        int fireteamId,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/Summary/{fireteamId}/", params);
        return client.request(config).then((response){
            return FireteamResponseResponse.fromJson(response);
        });
    }
}