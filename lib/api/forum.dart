import '../helpers/http.dart';
import '../responses/celist_of_forum_recruitment_detail_response.dart';
import '../responses/int64_response.dart';
import '../responses/list_of_tag_response_response.dart';
import '../responses/post_search_response_response.dart';
class Forum{
    /// Get topics from any forum.
    static Future<PostSearchResponseResponse> getTopicsPaged (
        HttpClient client,
        Int categoryFilter,
        String group,
        String locales,
        Int page,
        Int pageSize,
        Int quickDate,
        Int sort,
        String tagstring,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['locales'] = locales;
        params['tagstring'] = tagstring;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetTopicsPaged/$page/$pageSize/$group/$sort/$quickDate/$categoryFilter/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a listing of all topics marked as part of the core group.
    static Future<PostSearchResponseResponse> getCoreTopicsPaged (
        HttpClient client,
        Int categoryFilter,
        String locales,
        Int page,
        Int quickDate,
        Int sort,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['locales'] = locales;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetCoreTopicsPaged/$page/$sort/$quickDate/$categoryFilter/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a thread of posts at the given parent, optionally returning replies to those posts as well as the original parent.
    static Future<PostSearchResponseResponse> getPostsThreadedPaged (
        HttpClient client,
        Bool getParentPost,
        Int page,
        Int pageSize,
        String parentPostId,
        Int replySize,
        Bool rootThreadMode,
        String showbanned,
        Int sortMode,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostsThreadedPaged/$parentPostId/$page/$pageSize/$replySize/$getParentPost/$rootThreadMode/$sortMode/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a thread of posts starting at the topicId of the input childPostId, optionally returning replies to those posts as well as the original parent.
    static Future<PostSearchResponseResponse> getPostsThreadedPagedFromChild (
        HttpClient client,
        String childPostId,
        Int page,
        Int pageSize,
        Int replySize,
        Bool rootThreadMode,
        String showbanned,
        Int sortMode,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostsThreadedPagedFromChild/$childPostId/$page/$pageSize/$replySize/$rootThreadMode/$sortMode/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
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
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostAndParent/$childPostId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
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
        params['showbanned'] = showbanned;
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetPostAndParentAwaitingApproval/$childPostId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the post Id for the given content item&#39;s comments, if it exists.
    static Future<int64Response> getTopicForContent (
        HttpClient client,
        String contentId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/GetTopicForContent/$contentId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return int64Response.fromJson(response.mappedBody);
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
            return ListOfTagResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the specified forum poll.
    static Future<PostSearchResponseResponse> getPoll (
        HttpClient client,
        String topicId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Forum/Poll/$topicId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PostSearchResponseResponse.fromJson(response.mappedBody);
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
            return CEListOfForumRecruitmentDetailResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}