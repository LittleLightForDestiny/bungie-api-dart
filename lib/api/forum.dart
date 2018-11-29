import '../helpers/http.dart';
import '../responses/post_search_response_response.dart';
import '../responses/int64_response.dart';
import '../responses/list_of_tag_response_response.dart';
import '../responses/forum_recruitment_detail_response.dart';
import '../responses/save_message_result_response.dart';
import '../responses/celist_of_forum_recruitment_detail_response.dart';
class Forum{
    static Future<PostSearchResponseResponse> getTopicsPaged (
        HttpClient client,
        int categoryFilter,
        int group,
        String locales,
        int page,
        int pageSize,
        int quickDate,
        int sort,
        String tagstring,
    ) {
        Map<String, String> params = new Map();
        params['locales'] = "${ locales }";
        params['tagstring'] = "${ tagstring }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetTopicsPaged/${page}/{pageSize}/{group}/{sort}/{quickDate}/{categoryFilter}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<PostSearchResponseResponse> getCoreTopicsPaged (
        HttpClient client,
        int categoryFilter,
        String locales,
        int page,
        int quickDate,
        int sort,
    ) {
        Map<String, String> params = new Map();
        params['locales'] = "${ locales }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetCoreTopicsPaged/${page}/{sort}/{quickDate}/{categoryFilter}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<PostSearchResponseResponse> getPostsThreadedPaged (
        HttpClient client,
        bool getParentPost,
        int page,
        int pageSize,
        int parentPostId,
        int replySize,
        bool rootThreadMode,
        String showbanned,
        int sortMode,
    ) {
        Map<String, String> params = new Map();
        params['showbanned'] = "${ showbanned }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostsThreadedPaged/${parentPostId}/{page}/{pageSize}/{replySize}/{getParentPost}/{rootThreadMode}/{sortMode}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<PostSearchResponseResponse> getPostsThreadedPagedFromChild (
        HttpClient client,
        int childPostId,
        int page,
        int pageSize,
        int replySize,
        bool rootThreadMode,
        String showbanned,
        int sortMode,
    ) {
        Map<String, String> params = new Map();
        params['showbanned'] = "${ showbanned }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostsThreadedPagedFromChild/${childPostId}/{page}/{pageSize}/{replySize}/{rootThreadMode}/{sortMode}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<PostSearchResponseResponse> getPostAndParent (
        HttpClient client,
        int childPostId,
        String showbanned,
    ) {
        Map<String, String> params = new Map();
        params['showbanned'] = "${ showbanned }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostAndParent/${childPostId}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<PostSearchResponseResponse> getPostAndParentAwaitingApproval (
        HttpClient client,
        int childPostId,
        String showbanned,
    ) {
        Map<String, String> params = new Map();
        params['showbanned'] = "${ showbanned }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostAndParentAwaitingApproval/${childPostId}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<int64Response> getTopicForContent (
        HttpClient client,
        int contentId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetTopicForContent/${contentId}/", params);
        return client.request(config).then((response){
            return int64Response.fromJson(response);
        });
    }
    static Future<ListOfTagResponseResponse> getForumTagSuggestions (
        HttpClient client,
        String partialtag,
    ) {
        Map<String, String> params = new Map();
        params['partialtag'] = "${ partialtag }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetForumTagSuggestions/", params);
        return client.request(config).then((response){
            return ListOfTagResponseResponse.fromJson(response);
        });
    }
    static Future<PostSearchResponseResponse> getPoll (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/Poll/${topicId}/", params);
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    static Future<ForumRecruitmentDetailResponse> joinFireteamThread (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Join/${topicId}/", params);
        return client.request(config).then((response){
            return ForumRecruitmentDetailResponse.fromJson(response);
        });
    }
    static Future<ForumRecruitmentDetailResponse> leaveFireteamThread (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Leave/${topicId}/", params);
        return client.request(config).then((response){
            return ForumRecruitmentDetailResponse.fromJson(response);
        });
    }
    static Future<ForumRecruitmentDetailResponse> kickBanFireteamApplicant (
        HttpClient client,
        int targetMembershipId,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/KickBan/${topicId}/{targetMembershipId}/", params);
        return client.request(config).then((response){
            return ForumRecruitmentDetailResponse.fromJson(response);
        });
    }
    static Future<SaveMessageResultResponse> approveFireteamThread (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Approve/${topicId}/", params);
        return client.request(config).then((response){
            return SaveMessageResultResponse.fromJson(response);
        });
    }
    static Future<CEListOfForumRecruitmentDetailResponse> getRecruitmentThreadSummaries (
        HttpClient client,
        List<int> body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Summaries/", params);
        config.body = body;
        return client.request(config).then((response){
            return CEListOfForumRecruitmentDetailResponse.fromJson(response);
        });
    }
}