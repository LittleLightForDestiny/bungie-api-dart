import '../helpers/http.dart';
import '../enums/forum_post_sort_enum.dart';
import '../enums/forum_topics_category_filters_enum.dart';
import '../enums/forum_topics_quick_date_enum.dart';
import '../enums/forum_topics_sort_enum.dart';
import '../responses/celist_of_forum_recruitment_detail_response.dart';
import '../responses/int64_response.dart';
import '../responses/list_of_tag_response_response.dart';
import '../responses/post_search_response_response.dart';
class Forum{
    /// Get topics from any forum.
    static Future<PostSearchResponseResponse> getTopicsPaged (
        HttpClient client,
        ForumTopicsCategoryFiltersEnum categoryFilter,
        String group,
        String locales,
        int page,
        int pageSize,
        ForumTopicsQuickDateEnum quickDate,
        ForumTopicsSortEnum sort,
        String tagstring,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _categoryFilter = '${categoryFilter.value}';
        final String _group = '$group';
        final String _page = '$page';
        final String _pageSize = '$pageSize';
        final String _quickDate = '${quickDate.value}';
        final String _sort = '${sort.value}';
        params['locales'] = locales;
        params['tagstring'] = tagstring;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetTopicsPaged/$_page/$_pageSize/$_group/$_sort/$_quickDate/$_categoryFilter/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a listing of all topics marked as part of the core group.
    static Future<PostSearchResponseResponse> getCoreTopicsPaged (
        HttpClient client,
        ForumTopicsCategoryFiltersEnum categoryFilter,
        String locales,
        int page,
        ForumTopicsQuickDateEnum quickDate,
        ForumTopicsSortEnum sort,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _categoryFilter = '${categoryFilter.value}';
        final String _page = '$page';
        final String _quickDate = '${quickDate.value}';
        final String _sort = '${sort.value}';
        params['locales'] = locales;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetCoreTopicsPaged/$_page/$_sort/$_quickDate/$_categoryFilter/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a thread of posts at the given parent, optionally returning replies to those posts as well as the original parent.
    static Future<PostSearchResponseResponse> getPostsThreadedPaged (
        HttpClient client,
        bool getParentPost,
        int page,
        int pageSize,
        String parentPostId,
        int replySize,
        bool rootThreadMode,
        String showbanned,
        ForumPostSortEnum sortMode,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _getParentPost = '$getParentPost';
        final String _page = '$page';
        final String _pageSize = '$pageSize';
        final String _parentPostId = '$parentPostId';
        final String _replySize = '$replySize';
        final String _rootThreadMode = '$rootThreadMode';
        final String _sortMode = '${sortMode.value}';
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostsThreadedPaged/$_parentPostId/$_page/$_pageSize/$_replySize/$_getParentPost/$_rootThreadMode/$_sortMode/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a thread of posts starting at the topicId of the input childPostId, optionally returning replies to those posts as well as the original parent.
    static Future<PostSearchResponseResponse> getPostsThreadedPagedFromChild (
        HttpClient client,
        String childPostId,
        int page,
        int pageSize,
        int replySize,
        bool rootThreadMode,
        String showbanned,
        ForumPostSortEnum sortMode,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _childPostId = '$childPostId';
        final String _page = '$page';
        final String _pageSize = '$pageSize';
        final String _replySize = '$replySize';
        final String _rootThreadMode = '$rootThreadMode';
        final String _sortMode = '${sortMode.value}';
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostsThreadedPagedFromChild/$_childPostId/$_page/$_pageSize/$_replySize/$_rootThreadMode/$_sortMode/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the post specified and its immediate parent.
    static Future<PostSearchResponseResponse> getPostAndParent (
        HttpClient client,
        String childPostId,
        String showbanned,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _childPostId = '$childPostId';
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostAndParent/$_childPostId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the post specified and its immediate parent of posts that are awaiting approval.
    static Future<PostSearchResponseResponse> getPostAndParentAwaitingApproval (
        HttpClient client,
        String childPostId,
        String showbanned,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _childPostId = '$childPostId';
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostAndParentAwaitingApproval/$_childPostId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the post Id for the given content item's comments, if it exists.
    static Future<Int64Response> getTopicForContent (
        HttpClient client,
        String contentId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _contentId = '$contentId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetTopicForContent/$_contentId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int64Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets tag suggestions based on partial text entry, matching them with other tags previously used in the forums.
    static Future<ListOfTagResponseResponse> getForumTagSuggestions (
        HttpClient client,
        String partialtag,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['partialtag'] = partialtag;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetForumTagSuggestions/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfTagResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the specified forum poll.
    static Future<PostSearchResponseResponse> getPoll (
        HttpClient client,
        String topicId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _topicId = '$topicId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/Poll/$_topicId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Allows the caller to get a list of to 25 recruitment thread summary information objects.
    static Future<CEListOfForumRecruitmentDetailResponse> getRecruitmentThreadSummaries (
        HttpClient client,
        List<String> body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Forum/Recruit/Summaries/', params);
        config.body = body;
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return CEListOfForumRecruitmentDetailResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}