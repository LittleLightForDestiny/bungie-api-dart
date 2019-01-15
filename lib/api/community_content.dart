import '../helpers/http.dart';
import '../responses/post_search_response_response.dart';
import '../responses/search_result_of_community_live_status_response.dart';
import '../responses/community_live_status_response.dart';
class CommunityContent{
    
    /** Returns community content. */
    static Future<PostSearchResponseResponse> getCommunityContent (
        HttpClient client,
        int mediaFilter,
        int page,
        int sort,
    ) {
        Map<String, dynamic> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Get/${sort}/${mediaFilter}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            if(response.statusCode == 200){
                return PostSearchResponseResponse.fromMap(response.mappedBody);
            }
            throw Exception(response.mappedBody);
        });
    }
    
    /** Returns info about community members who are live streaming. */
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatuses (
        HttpClient client,
        int modeHash,
        int page,
        int partnershipType,
        int sort,
        String streamLocale,
    ) {
        Map<String, dynamic> params = new Map();
        params['modeHash'] = modeHash;
        params['streamLocale'] = streamLocale;
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/All/${partnershipType}/${sort}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            if(response.statusCode == 200){
                return SearchResultOfCommunityLiveStatusResponse.fromMap(response.mappedBody);
            }
            throw Exception(response.mappedBody);
        });
    }
    
    /** Returns info about community members who are live streaming in your clans. */
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatusesForClanmates (
        HttpClient client,
        int page,
        int partnershipType,
        int sort,
    ) {
        Map<String, dynamic> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Clan/${partnershipType}/${sort}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            if(response.statusCode == 200){
                return SearchResultOfCommunityLiveStatusResponse.fromMap(response.mappedBody);
            }
            throw Exception(response.mappedBody);
        });
    }
    
    /** Returns info about community members who are live streaming among your friends. */
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatusesForFriends (
        HttpClient client,
        int page,
        int partnershipType,
        int sort,
    ) {
        Map<String, dynamic> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Friends/${partnershipType}/${sort}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            if(response.statusCode == 200){
                return SearchResultOfCommunityLiveStatusResponse.fromMap(response.mappedBody);
            }
            throw Exception(response.mappedBody);
        });
    }
    
    /** Returns info about Featured live streams. */
    static Future<SearchResultOfCommunityLiveStatusResponse> getFeaturedCommunityLiveStatuses (
        HttpClient client,
        int page,
        int partnershipType,
        int sort,
        String streamLocale,
    ) {
        Map<String, dynamic> params = new Map();
        params['streamLocale'] = streamLocale;
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Featured/${partnershipType}/${sort}/${page}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            if(response.statusCode == 200){
                return SearchResultOfCommunityLiveStatusResponse.fromMap(response.mappedBody);
            }
            throw Exception(response.mappedBody);
        });
    }
    
    /** Gets the Live Streaming status of a particular Account and Membership Type. */
    static Future<CommunityLiveStatusResponse> getStreamingStatusForMember (
        HttpClient client,
        String membershipId,
        int membershipType,
        int partnershipType,
    ) {
        Map<String, dynamic> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/CommunityContent/Live/Users/${partnershipType}/${membershipType}/${membershipId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            if(response.statusCode == 200){
                return CommunityLiveStatusResponse.fromMap(response.mappedBody);
            }
            throw Exception(response.mappedBody);
        });
    }
}