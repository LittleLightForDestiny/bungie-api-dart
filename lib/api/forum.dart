import '../helpers/http.dart';
import '../responses/post_search_response_response.dart';
import '../responses/int64_response.dart';
import '../responses/list_of_tag_response_response.dart';
import '../responses/forum_recruitment_detail_response.dart';
import '../responses/save_message_result_response.dart';
import '../responses/celist_of_forum_recruitment_detail_response.dart';
class Forum{
    
    //Get topics from any forum.
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
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetTopicsPaged/${page}/${pageSize}/${group}/${sort}/${quickDate}/${categoryFilter}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    
    //Gets a listing of all topics marked as part of the core group.
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
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetCoreTopicsPaged/${page}/${sort}/${quickDate}/${categoryFilter}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    
    //Returns a thread of posts at the given parent, optionally returning replies to those posts as well as the original parent.
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
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostsThreadedPaged/${parentPostId}/${page}/${pageSize}/${replySize}/${getParentPost}/${rootThreadMode}/${sortMode}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    
    //Returns a thread of posts starting at the topicId of the input childPostId, optionally returning replies to those posts as well as the original parent.
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
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostsThreadedPagedFromChild/${childPostId}/${page}/${pageSize}/${replySize}/${rootThreadMode}/${sortMode}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    
    //Returns the post specified and its immediate parent.
    static Future<PostSearchResponseResponse> getPostAndParent (
        HttpClient client,
        int childPostId,
        String showbanned,
    ) {
        Map<String, String> params = new Map();
        params['showbanned'] = "${ showbanned }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostAndParent/${childPostId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    
    //Returns the post specified and its immediate parent of posts that are awaiting approval.
    static Future<PostSearchResponseResponse> getPostAndParentAwaitingApproval (
        HttpClient client,
        int childPostId,
        String showbanned,
    ) {
        Map<String, String> params = new Map();
        params['showbanned'] = "${ showbanned }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetPostAndParentAwaitingApproval/${childPostId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    
    //Gets the post Id for the given content item&#39;s comments, if it exists.
    static Future<int64Response> getTopicForContent (
        HttpClient client,
        int contentId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetTopicForContent/${contentId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return int64Response.fromJson(response);
        });
    }
    
    //Gets tag suggestions based on partial text entry, matching them with other tags previously used in the forums.
    static Future<ListOfTagResponseResponse> getForumTagSuggestions (
        HttpClient client,
        String partialtag,
    ) {
        Map<String, String> params = new Map();
        params['partialtag'] = "${ partialtag }";
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/GetForumTagSuggestions/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return ListOfTagResponseResponse.fromJson(response);
        });
    }
    
    //Gets the specified forum poll.
    static Future<PostSearchResponseResponse> getPoll (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Forum/Poll/${topicId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return PostSearchResponseResponse.fromJson(response);
        });
    }
    
    //Allows a user to slot themselves into a recruitment thread fireteam slot. Returns the new state of the fireteam.
    static Future<ForumRecruitmentDetailResponse> joinFireteamThread (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Join/${topicId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return ForumRecruitmentDetailResponse.fromJson(response);
        });
    }
    
    //Allows a user to remove themselves from a recruitment thread fireteam slot. Returns the new state of the fireteam.
    static Future<ForumRecruitmentDetailResponse> leaveFireteamThread (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Leave/${topicId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return ForumRecruitmentDetailResponse.fromJson(response);
        });
    }
    
    //Allows a recruitment thread owner to kick a join user from the fireteam. Returns the new state of the fireteam.
    static Future<ForumRecruitmentDetailResponse> kickBanFireteamApplicant (
        HttpClient client,
        int targetMembershipId,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/KickBan/${topicId}/${targetMembershipId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return ForumRecruitmentDetailResponse.fromJson(response);
        });
    }
    
    //Allows the owner of a fireteam thread to approve all joined members and start a private message conversation with them.
    static Future<SaveMessageResultResponse> approveFireteamThread (
        HttpClient client,
        int topicId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Approve/${topicId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SaveMessageResultResponse.fromJson(response);
        });
    }
    
    //Allows the caller to get a list of to 25 recruitment thread summary information objects.
    static Future<CEListOfForumRecruitmentDetailResponse> getRecruitmentThreadSummaries (
        HttpClient client,
        List<int> body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Forum/Recruit/Summaries/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return CEListOfForumRecruitmentDetailResponse.fromJson(response);
        });
    }
}