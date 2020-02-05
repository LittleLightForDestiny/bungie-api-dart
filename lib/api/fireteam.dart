import '../helpers/http.dart';
import '../enums/fireteam_activity_type.dart';
import '../enums/fireteam_date_range.dart';
import '../enums/fireteam_platform.dart';
import '../enums/fireteam_public_search_option.dart';
import '../enums/fireteam_slot_search.dart';
import '../responses/fireteam_response_response.dart';
import '../responses/int32_response.dart';
import '../responses/search_result_of_fireteam_response_response.dart';
import '../responses/search_result_of_fireteam_summary_response.dart';
class Fireteam{
    /// Gets a count of all active non-public fireteams for the specified clan. Maximum value returned is 25.
    static Future<Int32Response> getActivePrivateClanFireteamCount (
        HttpClient client,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Fireteam/Clan/$_groupId/ActiveCount/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a listing of all of this clan's fireteams that are have available slots. Caller is not checked for join criteria so caching is maximized.
    static Future<SearchResultOfFireteamSummaryResponse> getAvailableClanFireteams (
        HttpClient client,
        FireteamActivityType activityType,
        FireteamDateRange dateRange,
        String groupId,
        String langFilter,
        int page,
        FireteamPlatform platform,
        FireteamPublicSearchOption publicOnly,
        FireteamSlotSearch slotFilter,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _activityType = '${activityType.value}';
        final String _dateRange = '${dateRange.value}';
        final String _groupId = '$groupId';
        final String _page = '$page';
        final String _platform = '${platform.value}';
        final String _publicOnly = '${publicOnly.value}';
        final String _slotFilter = '${slotFilter.value}';
        params['langFilter'] = langFilter;
        final HttpClientConfig config = HttpClientConfig('GET', '/Fireteam/Clan/$_groupId/Available/$_platform/$_activityType/$_dateRange/$_slotFilter/$_publicOnly/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfFireteamSummaryResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a listing of all public fireteams starting now with open slots. Caller is not checked for join criteria so caching is maximized.
    static Future<SearchResultOfFireteamSummaryResponse> searchPublicAvailableClanFireteams (
        HttpClient client,
        FireteamActivityType activityType,
        FireteamDateRange dateRange,
        String langFilter,
        int page,
        FireteamPlatform platform,
        FireteamSlotSearch slotFilter,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _activityType = '${activityType.value}';
        final String _dateRange = '${dateRange.value}';
        final String _page = '$page';
        final String _platform = '${platform.value}';
        final String _slotFilter = '${slotFilter.value}';
        params['langFilter'] = langFilter;
        final HttpClientConfig config = HttpClientConfig('GET', '/Fireteam/Search/Available/$_platform/$_activityType/$_dateRange/$_slotFilter/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfFireteamSummaryResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a listing of all clan fireteams that caller is an applicant, a member, or an alternate of.
    static Future<SearchResultOfFireteamResponseResponse> getMyClanFireteams (
        HttpClient client,
        bool groupFilter,
        String groupId,
        bool includeClosed,
        String langFilter,
        int page,
        FireteamPlatform platform,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _includeClosed = '$includeClosed';
        final String _page = '$page';
        final String _platform = '${platform.value}';
        params['groupFilter'] = groupFilter;
        params['langFilter'] = langFilter;
        final HttpClientConfig config = HttpClientConfig('GET', '/Fireteam/Clan/$_groupId/My/$_platform/$_includeClosed/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfFireteamResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a specific clan fireteam.
    static Future<FireteamResponseResponse> getClanFireteam (
        HttpClient client,
        String fireteamId,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _fireteamId = '$fireteamId';
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Fireteam/Clan/$_groupId/Summary/$_fireteamId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return FireteamResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}