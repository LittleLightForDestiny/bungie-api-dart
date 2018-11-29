import '../helpers/http.dart';
import '../responses/dictionary_ofint32_andstring_response.dart';
import '../responses/list_of_group_theme_response.dart';
import '../responses/boolean_response.dart';
import '../responses/int32_response.dart';
import '../responses/list_of_group_v2_card_response.dart';
import '../responses/group_search_response_response.dart';
import '../responses/group_response_response.dart';
import '../responses/celist_of_group_optional_conversation_response.dart';
import '../responses/group_creation_response_response.dart';
import '../responses/int64_response.dart';
import '../responses/search_result_of_group_member_response.dart';
import '../responses/group_member_leave_result_response.dart';
import '../responses/search_result_of_group_ban_response.dart';
import '../responses/group_application_response_response.dart';
import '../responses/search_result_of_group_member_application_response.dart';
import '../responses/list_of_entity_action_result_response.dart';
import '../responses/group_membership_search_response_response.dart';
import '../responses/group_potential_membership_search_response_response.dart';
import '../models/group_query.dart';
import '../models/group_action.dart';
import '../models/group_edit_action.dart';
import '../models/clan_banner.dart';
import '../models/group_options_edit_action.dart';
import '../models/group_optional_conversation_add_request.dart';
import '../models/group_optional_conversation_edit_request.dart';
import '../models/group_ban_request.dart';
import '../models/group_application_request.dart';
import '../models/group_application_list_request.dart';
class GroupV2{
    static Future<DictionaryOfint32AndstringResponse> getAvailableAvatars (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/GetAvailableAvatars/", params);
        return client.request(config).then((response){
            return DictionaryOfint32AndstringResponse.fromJson(response);
        });
    }
    static Future<ListOfGroupThemeResponse> getAvailableThemes (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/GetAvailableThemes/", params);
        return client.request(config).then((response){
            return ListOfGroupThemeResponse.fromJson(response);
        });
    }
    static Future<booleanResponse> getUserClanInviteSetting (
        HttpClient client,
        int mType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/GetUserClanInviteSetting/${mType}/", params);
        return client.request(config).then((response){
            return booleanResponse.fromJson(response);
        });
    }
    static Future<int32Response> setUserClanInviteSetting (
        HttpClient client,
        bool allowInvites,
        int mType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/SetUserClanInviteSetting/${mType}/{allowInvites}/", params);
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<ListOfGroupV2CardResponse> getRecommendedGroups (
        HttpClient client,
        int createDateRange,
        int groupType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/Recommended/${groupType}/{createDateRange}/", params);
        return client.request(config).then((response){
            return ListOfGroupV2CardResponse.fromJson(response);
        });
    }
    static Future<GroupSearchResponseResponse> groupSearch (
        HttpClient client,
        GroupQuery body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/Search/", params);
        config.body = body;
        return client.request(config).then((response){
            return GroupSearchResponseResponse.fromJson(response);
        });
    }
    static Future<GroupResponseResponse> getGroup (
        HttpClient client,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/", params);
        return client.request(config).then((response){
            return GroupResponseResponse.fromJson(response);
        });
    }
    static Future<GroupResponseResponse> getGroupByName (
        HttpClient client,
        String groupName,
        int groupType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/Name/${groupName}/{groupType}/", params);
        return client.request(config).then((response){
            return GroupResponseResponse.fromJson(response);
        });
    }
    static Future<CEListOfGroupOptionalConversationResponse> getGroupOptionalConversations (
        HttpClient client,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/OptionalConversations/", params);
        return client.request(config).then((response){
            return CEListOfGroupOptionalConversationResponse.fromJson(response);
        });
    }
    static Future<GroupCreationResponseResponse> createGroup (
        HttpClient client,
        GroupAction body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/Create/", params);
        config.body = body;
        return client.request(config).then((response){
            return GroupCreationResponseResponse.fromJson(response);
        });
    }
    static Future<int32Response> editGroup (
        HttpClient client,
        int groupId,
        GroupEditAction body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Edit/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<int32Response> editClanBanner (
        HttpClient client,
        int groupId,
        ClanBanner body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/EditClanBanner/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<int32Response> editFounderOptions (
        HttpClient client,
        int groupId,
        GroupOptionsEditAction body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/EditFounderOptions/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<int64Response> addOptionalConversation (
        HttpClient client,
        int groupId,
        GroupOptionalConversationAddRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/OptionalConversations/Add/", params);
        config.body = body;
        return client.request(config).then((response){
            return int64Response.fromJson(response);
        });
    }
    static Future<int64Response> editOptionalConversation (
        HttpClient client,
        int conversationId,
        int groupId,
        GroupOptionalConversationEditRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/OptionalConversations/Edit/{conversationId}/", params);
        config.body = body;
        return client.request(config).then((response){
            return int64Response.fromJson(response);
        });
    }
    static Future<SearchResultOfGroupMemberResponse> getMembersOfGroup (
        HttpClient client,
        int currentpage,
        int groupId,
        int memberType,
        String nameSearch,
    ) {
        Map<String, String> params = new Map();
        params['memberType'] = "${ memberType }";
        params['nameSearch'] = "${ nameSearch }";
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/Members/", params);
        return client.request(config).then((response){
            return SearchResultOfGroupMemberResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfGroupMemberResponse> getAdminsAndFounderOfGroup (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/AdminsAndFounder/", params);
        return client.request(config).then((response){
            return SearchResultOfGroupMemberResponse.fromJson(response);
        });
    }
    static Future<int32Response> editGroupMembership (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        int memberType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/{membershipType}/{membershipId}/SetMembershipType/{memberType}/", params);
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<GroupMemberLeaveResultResponse> kickMember (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/{membershipType}/{membershipId}/Kick/", params);
        return client.request(config).then((response){
            return GroupMemberLeaveResultResponse.fromJson(response);
        });
    }
    static Future<int32Response> banMember (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        GroupBanRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/{membershipType}/{membershipId}/Ban/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<int32Response> unbanMember (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/{membershipType}/{membershipId}/Unban/", params);
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<SearchResultOfGroupBanResponse> getBannedMembersOfGroup (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/Banned/", params);
        return client.request(config).then((response){
            return SearchResultOfGroupBanResponse.fromJson(response);
        });
    }
    static Future<booleanResponse> abdicateFoundership (
        HttpClient client,
        int founderIdNew,
        int groupId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Admin/AbdicateFoundership/{membershipType}/{founderIdNew}/", params);
        return client.request(config).then((response){
            return booleanResponse.fromJson(response);
        });
    }
    static Future<GroupApplicationResponseResponse> requestGroupMembership (
        HttpClient client,
        int groupId,
        int membershipType,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/Apply/{membershipType}/", params);
        config.body = body;
        return client.request(config).then((response){
            return GroupApplicationResponseResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfGroupMemberApplicationResponse> getPendingMemberships (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/Members/Pending/", params);
        return client.request(config).then((response){
            return SearchResultOfGroupMemberApplicationResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfGroupMemberApplicationResponse> getInvitedIndividuals (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/Members/InvitedIndividuals/", params);
        return client.request(config).then((response){
            return SearchResultOfGroupMemberApplicationResponse.fromJson(response);
        });
    }
    static Future<GroupMemberLeaveResultResponse> rescindGroupMembership (
        HttpClient client,
        int groupId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/Rescind/{membershipType}/", params);
        return client.request(config).then((response){
            return GroupMemberLeaveResultResponse.fromJson(response);
        });
    }
    static Future<ListOfEntityActionResultResponse> approveAllPending (
        HttpClient client,
        int groupId,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/ApproveAll/", params);
        config.body = body;
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    static Future<ListOfEntityActionResultResponse> denyAllPending (
        HttpClient client,
        int groupId,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/DenyAll/", params);
        config.body = body;
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    static Future<ListOfEntityActionResultResponse> approvePendingForList (
        HttpClient client,
        int groupId,
        GroupApplicationListRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/ApproveList/", params);
        config.body = body;
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    static Future<booleanResponse> approvePending (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/Approve/{membershipType}/{membershipId}/", params);
        config.body = body;
        return client.request(config).then((response){
            return booleanResponse.fromJson(response);
        });
    }
    static Future<ListOfEntityActionResultResponse> denyPendingForList (
        HttpClient client,
        int groupId,
        GroupApplicationListRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/DenyList/", params);
        config.body = body;
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    static Future<GroupMembershipSearchResponseResponse> getGroupsForMember (
        HttpClient client,
        int filter,
        int groupType,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/User/${membershipType}/{membershipId}/{filter}/{groupType}/", params);
        return client.request(config).then((response){
            return GroupMembershipSearchResponseResponse.fromJson(response);
        });
    }
    static Future<GroupPotentialMembershipSearchResponseResponse> getPotentialGroupsForMember (
        HttpClient client,
        int filter,
        int groupType,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/User/Potential/${membershipType}/{membershipId}/{filter}/{groupType}/", params);
        return client.request(config).then((response){
            return GroupPotentialMembershipSearchResponseResponse.fromJson(response);
        });
    }
    static Future<GroupApplicationResponseResponse> individualGroupInvite (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/IndividualInvite/{membershipType}/{membershipId}/", params);
        config.body = body;
        return client.request(config).then((response){
            return GroupApplicationResponseResponse.fromJson(response);
        });
    }
    static Future<GroupApplicationResponseResponse> individualGroupInviteCancel (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/IndividualInviteCancel/{membershipType}/{membershipId}/", params);
        return client.request(config).then((response){
            return GroupApplicationResponseResponse.fromJson(response);
        });
    }
}