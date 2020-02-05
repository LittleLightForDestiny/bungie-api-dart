import '../helpers/http.dart';
import '../enums/bungie_membership_type.dart';
import '../enums/community_content_sort_mode.dart';
import '../enums/community_status_sort.dart';
import '../enums/forum_topics_category_filters_enum.dart';
import '../enums/partnership_type.dart';
import '../responses/community_live_status_response.dart';
import '../responses/post_search_response_response.dart';
import '../responses/search_result_of_community_live_status_response.dart';
class CommunityContent{
    /// Returns community content.
    static Future<PostSearchResponseResponse> getCommunityContent (
        HttpClient client,
        ForumTopicsCategoryFiltersEnum mediaFilter,
        int page,
        CommunityContentSortMode sort,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _mediaFilter = '${mediaFilter.value}';
        final String _page = '$page';
        final String _sort = '${sort.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/CommunityContent/Get/$_sort/$_mediaFilter/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns info about community members who are live streaming.
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatuses (
        HttpClient client,
        int modeHash,
        int page,
        PartnershipType partnershipType,
        CommunityStatusSort sort,
        String streamLocale,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _page = '$page';
        final String _partnershipType = '${partnershipType.value}';
        final String _sort = '${sort.value}';
        params['modeHash'] = modeHash;
        params['streamLocale'] = streamLocale;
        final HttpClientConfig config = HttpClientConfig('GET', '/CommunityContent/Live/All/$_partnershipType/$_sort/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns info about community members who are live streaming in your clans.
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatusesForClanmates (
        HttpClient client,
        int page,
        PartnershipType partnershipType,
        CommunityStatusSort sort,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _page = '$page';
        final String _partnershipType = '${partnershipType.value}';
        final String _sort = '${sort.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/CommunityContent/Live/Clan/$_partnershipType/$_sort/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns info about community members who are live streaming among your friends.
    static Future<SearchResultOfCommunityLiveStatusResponse> getCommunityLiveStatusesForFriends (
        HttpClient client,
        int page,
        PartnershipType partnershipType,
        CommunityStatusSort sort,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _page = '$page';
        final String _partnershipType = '${partnershipType.value}';
        final String _sort = '${sort.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/CommunityContent/Live/Friends/$_partnershipType/$_sort/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns info about Featured live streams.
    static Future<SearchResultOfCommunityLiveStatusResponse> getFeaturedCommunityLiveStatuses (
        HttpClient client,
        int page,
        PartnershipType partnershipType,
        CommunityStatusSort sort,
        String streamLocale,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _page = '$page';
        final String _partnershipType = '${partnershipType.value}';
        final String _sort = '${sort.value}';
        params['streamLocale'] = streamLocale;
        final HttpClientConfig config = HttpClientConfig('GET', '/CommunityContent/Live/Featured/$_partnershipType/$_sort/$_page/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfCommunityLiveStatusResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the Live Streaming status of a particular Account and Membership Type.
    static Future<CommunityLiveStatusResponse> getStreamingStatusForMember (
        HttpClient client,
        String membershipId,
        BungieMembershipType membershipType,
        PartnershipType partnershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final String _partnershipType = '${partnershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/CommunityContent/Live/Users/$_partnershipType/$_membershipType/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return CommunityLiveStatusResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}