import '../helpers/http.dart';
import '../enums/community_content_sort_mode.dart';
import '../enums/forum_topics_category_filters_enum.dart';
import '../responses/post_search_response_response.dart';
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
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}