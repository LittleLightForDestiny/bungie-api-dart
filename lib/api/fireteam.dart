import '../helpers/http.dart';
import '../responses/int32_response.dart';
import '../responses/search_result_of_fireteam_summary_response.dart';
import '../responses/search_result_of_fireteam_response_response.dart';
import '../responses/fireteam_response_response.dart';
class Fireteam{
    
    //Gets a count of all active non-public fireteams for the specified clan. Maximum value returned is 25.
    static Future<int32Response> getActivePrivateClanFireteamCount (
        HttpClient client,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/ActiveCount/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Gets a listing of all of this clan&#39;s fireteams that are have available slots. Caller is not checked for join criteria so caching is maximized.
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
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/Available/${platform}/${activityType}/${dateRange}/${slotFilter}/${publicOnly}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfFireteamSummaryResponse.fromJson(response);
        });
    }
    
    //Gets a listing of all public fireteams starting now with open slots. Caller is not checked for join criteria so caching is maximized.
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
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Search/Available/${platform}/${activityType}/${dateRange}/${slotFilter}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfFireteamSummaryResponse.fromJson(response);
        });
    }
    
    //Gets a listing of all clan fireteams that caller is an applicant, a member, or an alternate of.
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
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/My/${platform}/${includeClosed}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfFireteamResponseResponse.fromJson(response);
        });
    }
    
    //Gets a specific clan fireteam.
    static Future<FireteamResponseResponse> getClanFireteam (
        HttpClient client,
        int fireteamId,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Fireteam/Clan/${groupId}/Summary/${fireteamId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return FireteamResponseResponse.fromJson(response);
        });
    }
}