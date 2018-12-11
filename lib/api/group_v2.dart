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
    
    //Returns a list of all available group avatars for the signed-in user.
    static Future<DictionaryOfint32AndstringResponse> getAvailableAvatars (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/GetAvailableAvatars/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return DictionaryOfint32AndstringResponse.fromJson(response);
        });
    }
    
    //Returns a list of all available group themes.
    static Future<ListOfGroupThemeResponse> getAvailableThemes (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/GetAvailableThemes/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return ListOfGroupThemeResponse.fromJson(response);
        });
    }
    
    //Gets the state of the user&#39;s clan invite preferences for a particular membership type - true if they wish to be invited to clans, false otherwise.
    static Future<booleanResponse> getUserClanInviteSetting (
        HttpClient client,
        int mType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/GetUserClanInviteSetting/${mType}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return booleanResponse.fromJson(response);
        });
    }
    
    //Sets the state of the user&#39;s clan invite preferences - true if they wish to be invited to clans, false otherwise.
    static Future<int32Response> setUserClanInviteSetting (
        HttpClient client,
        bool allowInvites,
        int mType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/SetUserClanInviteSetting/${mType}/${allowInvites}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Gets groups recommended for you based on the groups to whom those you follow belong.
    static Future<ListOfGroupV2CardResponse> getRecommendedGroups (
        HttpClient client,
        int createDateRange,
        int groupType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/Recommended/${groupType}/${createDateRange}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return ListOfGroupV2CardResponse.fromJson(response);
        });
    }
    
    //Search for Groups.
    static Future<GroupSearchResponseResponse> groupSearch (
        HttpClient client,
        GroupQuery body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/Search/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return GroupSearchResponseResponse.fromJson(response);
        });
    }
    
    //Get information about a specific group of the given ID.
    static Future<GroupResponseResponse> getGroup (
        HttpClient client,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return GroupResponseResponse.fromJson(response);
        });
    }
    
    //Get information about a specific group with the given name and type.
    static Future<GroupResponseResponse> getGroupByName (
        HttpClient client,
        String groupName,
        int groupType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/Name/${groupName}/${groupType}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return GroupResponseResponse.fromJson(response);
        });
    }
    
    //Gets a list of available optional conversation channels and their settings.
    static Future<CEListOfGroupOptionalConversationResponse> getGroupOptionalConversations (
        HttpClient client,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/OptionalConversations/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return CEListOfGroupOptionalConversationResponse.fromJson(response);
        });
    }
    
    //Create a new group.
    static Future<GroupCreationResponseResponse> createGroup (
        HttpClient client,
        GroupAction body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/Create/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return GroupCreationResponseResponse.fromJson(response);
        });
    }
    
    //Edit an existing group. You must have suitable permissions in the group to perform this operation. This latest revision will only edit the fields you pass in - pass null for properties you want to leave unaltered.
    static Future<int32Response> editGroup (
        HttpClient client,
        int groupId,
        GroupEditAction body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Edit/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Edit an existing group&#39;s clan banner. You must have suitable permissions in the group to perform this operation. All fields are required.
    static Future<int32Response> editClanBanner (
        HttpClient client,
        int groupId,
        ClanBanner body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/EditClanBanner/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Edit group options only available to a founder. You must have suitable permissions in the group to perform this operation.
    static Future<int32Response> editFounderOptions (
        HttpClient client,
        int groupId,
        GroupOptionsEditAction body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/EditFounderOptions/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Add a new optional conversation&#x2F;chat channel. Requires admin permissions to the group.
    static Future<int64Response> addOptionalConversation (
        HttpClient client,
        int groupId,
        GroupOptionalConversationAddRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/OptionalConversations/Add/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return int64Response.fromJson(response);
        });
    }
    
    //Edit the settings of an optional conversation&#x2F;chat channel. Requires admin permissions to the group.
    static Future<int64Response> editOptionalConversation (
        HttpClient client,
        int conversationId,
        int groupId,
        GroupOptionalConversationEditRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/OptionalConversations/Edit/${conversationId}/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return int64Response.fromJson(response);
        });
    }
    
    //Get the list of members in a given group.
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
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfGroupMemberResponse.fromJson(response);
        });
    }
    
    //Get the list of members in a given group who are of admin level or higher.
    static Future<SearchResultOfGroupMemberResponse> getAdminsAndFounderOfGroup (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/AdminsAndFounder/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfGroupMemberResponse.fromJson(response);
        });
    }
    
    //Edit the membership type of a given member. You must have suitable permissions in the group to perform this operation.
    static Future<int32Response> editGroupMembership (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        int memberType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/SetMembershipType/${memberType}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Kick a member from the given group, forcing them to reapply if they wish to re-join the group. You must have suitable permissions in the group to perform this operation.
    static Future<GroupMemberLeaveResultResponse> kickMember (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/Kick/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return GroupMemberLeaveResultResponse.fromJson(response);
        });
    }
    
    //Bans the requested member from the requested group for the specified period of time.
    static Future<int32Response> banMember (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        GroupBanRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/Ban/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Unbans the requested member, allowing them to re-apply for membership.
    static Future<int32Response> unbanMember (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/Unban/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    
    //Get the list of banned members in a given group. Only accessible to group Admins and above. Not applicable to all groups. Check group features.
    static Future<SearchResultOfGroupBanResponse> getBannedMembersOfGroup (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/Banned/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfGroupBanResponse.fromJson(response);
        });
    }
    
    //An administrative method to allow the founder of a group or clan to give up their position to another admin permanently.
    static Future<booleanResponse> abdicateFoundership (
        HttpClient client,
        int founderIdNew,
        int groupId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Admin/AbdicateFoundership/${membershipType}/${founderIdNew}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return booleanResponse.fromJson(response);
        });
    }
    
    //Request permission to join the given group.
    static Future<GroupApplicationResponseResponse> requestGroupMembership (
        HttpClient client,
        int groupId,
        int membershipType,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/Apply/${membershipType}/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return GroupApplicationResponseResponse.fromJson(response);
        });
    }
    
    //Get the list of users who are awaiting a decision on their application to join a given group. Modified to include application info.
    static Future<SearchResultOfGroupMemberApplicationResponse> getPendingMemberships (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/Members/Pending/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfGroupMemberApplicationResponse.fromJson(response);
        });
    }
    
    //Get the list of users who have been invited into the group.
    static Future<SearchResultOfGroupMemberApplicationResponse> getInvitedIndividuals (
        HttpClient client,
        int currentpage,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/${groupId}/Members/InvitedIndividuals/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return SearchResultOfGroupMemberApplicationResponse.fromJson(response);
        });
    }
    
    //Rescind your application to join the given group or leave the group if you are already a member..
    static Future<GroupMemberLeaveResultResponse> rescindGroupMembership (
        HttpClient client,
        int groupId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/Rescind/${membershipType}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return GroupMemberLeaveResultResponse.fromJson(response);
        });
    }
    
    //Approve all of the pending users for the given group.
    static Future<ListOfEntityActionResultResponse> approveAllPending (
        HttpClient client,
        int groupId,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/ApproveAll/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    
    //Deny all of the pending users for the given group.
    static Future<ListOfEntityActionResultResponse> denyAllPending (
        HttpClient client,
        int groupId,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/DenyAll/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    
    //Approve all of the pending users for the given group.
    static Future<ListOfEntityActionResultResponse> approvePendingForList (
        HttpClient client,
        int groupId,
        GroupApplicationListRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/ApproveList/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    
    //Approve the given membershipId to join the group&#x2F;clan as long as they have applied.
    static Future<booleanResponse> approvePending (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/Approve/${membershipType}/${membershipId}/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return booleanResponse.fromJson(response);
        });
    }
    
    //Deny all of the pending users for the given group that match the passed-in .
    static Future<ListOfEntityActionResultResponse> denyPendingForList (
        HttpClient client,
        int groupId,
        GroupApplicationListRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/DenyList/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return ListOfEntityActionResultResponse.fromJson(response);
        });
    }
    
    //Get information about the groups that a given member has joined.
    static Future<GroupMembershipSearchResponseResponse> getGroupsForMember (
        HttpClient client,
        int filter,
        int groupType,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/User/${membershipType}/${membershipId}/${filter}/${groupType}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return GroupMembershipSearchResponseResponse.fromJson(response);
        });
    }
    
    //Get information about the groups that a given member has applied to or been invited to.
    static Future<GroupPotentialMembershipSearchResponseResponse> getPotentialGroupsForMember (
        HttpClient client,
        int filter,
        int groupType,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/GroupV2/User/Potential/${membershipType}/${membershipId}/${filter}/${groupType}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return GroupPotentialMembershipSearchResponseResponse.fromJson(response);
        });
    }
    
    //Invite a user to join this group.
    static Future<GroupApplicationResponseResponse> individualGroupInvite (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
        GroupApplicationRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/IndividualInvite/${membershipType}/${membershipId}/", params);
        config.body = body;
        config.bodyContentType = 'application/json';
        return client.request(config).then((response){
            return GroupApplicationResponseResponse.fromJson(response);
        });
    }
    
    //Cancels a pending invitation to join a group.
    static Future<GroupApplicationResponseResponse> individualGroupInviteCancel (
        HttpClient client,
        int groupId,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/GroupV2/${groupId}/Members/IndividualInviteCancel/${membershipType}/${membershipId}/", params);
        config.bodyContentType = null;
        return client.request(config).then((response){
            return GroupApplicationResponseResponse.fromJson(response);
        });
    }
}