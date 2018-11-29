import '../helpers/http.dart';
import '../responses/post_search_response_response.dart';
import '../responses/search_result_of_community_live_status_response.dart';
import '../responses/community_live_status_response.dart';
class CommunityContent{
    static Future<PostSearchResponseResponse> getCommunityContent (
        HttpClient client,
        int mediaFilter,
        int page,
        int sort,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Get/${sort}/{mediaFilter}/{page}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatuses (
        HttpClient client,
        int modeHash,
        int page,
        int partnershipType,
        int sort,
        String streamLocale,
    ) {
        Map<String, String> params = new Map();
        params['modeHash'] = "${ modeHash }";
        params['streamLocale'] = "${ streamLocale }";
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/All/${partnershipType}/{sort}/{page}/", params);
        return client.request(config).then((response){
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatusesForClanmates (
        HttpClient client,
        int page,
        int partnershipType,
        int sort,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Clan/${partnershipType}/{sort}/{page}/", params);
        return client.request(config).then((response){
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatusesForFriends (
        HttpClient client,
        int page,
        int partnershipType,
        int sort,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Friends/${partnershipType}/{sort}/{page}/", params);
        return client.request(config).then((response){
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfCommunityLiveStatusResponse> getFeaturedCommunityLiveStatuses (
        HttpClient client,
        int page,
        int partnershipType,
        int sort,
        String streamLocale,
    ) {
        Map<String, String> params = new Map();
        params['streamLocale'] = "${ streamLocale }";
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Featured/${partnershipType}/{sort}/{page}/", params);
        return client.request(config).then((response){
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response);
        });
    }
    static Future<CommunityLiveStatusResponse> getStreamingStatusForMember (
        HttpClient client,
        int membershipId,
        int membershipType,
        int partnershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Users/${partnershipType}/{membershipType}/{membershipId}/", params);
        return client.request(config).then((response){
            return CommunityLiveStatusResponse.fromJson(response);
        });
    }
}