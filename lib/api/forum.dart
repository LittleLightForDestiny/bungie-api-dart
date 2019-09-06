import '../helpers/http.dart';
import '../responses/post_search_response_response.dart';
import '../responses/int64_response.dart';
import '../responses/list_of_tag_response_response.dart';
import '../responses/celist_of_forum_recruitment_detail_response.dart';

class Forum {
  /// Get topics from any forum.
  static Future<PostSearchResponseResponse> getTopicsPaged(
    HttpClient client,
    int categoryFilter,
    String group,
    String locales,
    int page,
    int pageSize,
    int quickDate,
    int sort,
    String tagstring,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['locales'] = locales;
    params['tagstring'] = tagstring;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetTopicsPaged/${page}/${pageSize}/${group}/${sort}/${quickDate}/${categoryFilter}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return PostSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets a listing of all topics marked as part of the core group.
  static Future<PostSearchResponseResponse> getCoreTopicsPaged(
    HttpClient client,
    int categoryFilter,
    String locales,
    int page,
    int quickDate,
    int sort,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['locales'] = locales;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetCoreTopicsPaged/${page}/${sort}/${quickDate}/${categoryFilter}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return PostSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns a thread of posts at the given parent, optionally returning replies to those posts as well as the original parent.
  static Future<PostSearchResponseResponse> getPostsThreadedPaged(
    HttpClient client,
    bool getParentPost,
    int page,
    int pageSize,
    String parentPostId,
    int replySize,
    bool rootThreadMode,
    String showbanned,
    int sortMode,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['showbanned'] = showbanned;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetPostsThreadedPaged/${parentPostId}/${page}/${pageSize}/${replySize}/${getParentPost}/${rootThreadMode}/${sortMode}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return PostSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns a thread of posts starting at the topicId of the input childPostId, optionally returning replies to those posts as well as the original parent.
  static Future<PostSearchResponseResponse> getPostsThreadedPagedFromChild(
    HttpClient client,
    String childPostId,
    int page,
    int pageSize,
    int replySize,
    bool rootThreadMode,
    String showbanned,
    int sortMode,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['showbanned'] = showbanned;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetPostsThreadedPagedFromChild/${childPostId}/${page}/${pageSize}/${replySize}/${rootThreadMode}/${sortMode}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return PostSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns the post specified and its immediate parent.
  static Future<PostSearchResponseResponse> getPostAndParent(
    HttpClient client,
    String childPostId,
    String showbanned,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['showbanned'] = showbanned;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetPostAndParent/${childPostId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return PostSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns the post specified and its immediate parent of posts that are awaiting approval.
  static Future<PostSearchResponseResponse> getPostAndParentAwaitingApproval(
    HttpClient client,
    String childPostId,
    String showbanned,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['showbanned'] = showbanned;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetPostAndParentAwaitingApproval/${childPostId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return PostSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets the post Id for the given content item&#39;s comments, if it exists.
  static Future<int64Response> getTopicForContent(
    HttpClient client,
    String contentId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetTopicForContent/${contentId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int64Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets tag suggestions based on partial text entry, matching them with other tags previously used in the forums.
  static Future<ListOfTagResponseResponse> getForumTagSuggestions(
    HttpClient client,
    String partialtag,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['partialtag'] = partialtag;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/GetForumTagSuggestions/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfTagResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets the specified forum poll.
  static Future<PostSearchResponseResponse> getPoll(
    HttpClient client,
    String topicId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Forum/Poll/${topicId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return PostSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Allows the caller to get a list of to 25 recruitment thread summary information objects.
  static Future<CEListOfForumRecruitmentDetailResponse> getRecruitmentThreadSummaries(
    HttpClient client,
    List<String> body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Forum/Recruit/Summaries/",
    );
    config.body = body;
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return CEListOfForumRecruitmentDetailResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
}
