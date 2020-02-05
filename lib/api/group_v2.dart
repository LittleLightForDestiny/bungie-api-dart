import '../helpers/http.dart';
import '../enums/bungie_membership_type.dart';
import '../enums/group_date_range.dart';
import '../enums/group_potential_member_status.dart';
import '../enums/group_type.dart';
import '../enums/groups_for_member_filter.dart';
import '../enums/runtime_group_member_type.dart';
import '../models/clan_banner.dart';
import '../models/group_application_list_request.dart';
import '../models/group_application_request.dart';
import '../models/group_ban_request.dart';
import '../models/group_edit_action.dart';
import '../models/group_name_search_request.dart';
import '../models/group_optional_conversation_add_request.dart';
import '../models/group_optional_conversation_edit_request.dart';
import '../models/group_options_edit_action.dart';
import '../models/group_query.dart';
import '../responses/boolean_response.dart';
import '../responses/celist_of_group_optional_conversation_response.dart';
import '../responses/dictionary_ofint32_andstring_response.dart';
import '../responses/get_groups_for_member_response_response.dart';
import '../responses/group_application_response_response.dart';
import '../responses/group_member_leave_result_response.dart';
import '../responses/group_membership_search_response_response.dart';
import '../responses/group_potential_membership_search_response_response.dart';
import '../responses/group_response_response.dart';
import '../responses/group_search_response_response.dart';
import '../responses/int32_response.dart';
import '../responses/int64_response.dart';
import '../responses/list_of_entity_action_result_response.dart';
import '../responses/list_of_group_theme_response.dart';
import '../responses/list_of_group_v2_card_response.dart';
import '../responses/search_result_of_group_ban_response.dart';
import '../responses/search_result_of_group_member_application_response.dart';
import '../responses/search_result_of_group_member_response.dart';
class GroupV2{
    /// Returns a list of all available group avatars for the signed-in user.
    static Future<DictionaryOfint32AndstringResponse> getAvailableAvatars (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/GetAvailableAvatars/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DictionaryOfint32AndstringResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a list of all available group themes.
    static Future<ListOfGroupThemeResponse> getAvailableThemes (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/GetAvailableThemes/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfGroupThemeResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the state of the user's clan invite preferences for a particular membership type - true if they wish to be invited to clans, false otherwise.
    static Future<BooleanResponse> getUserClanInviteSetting (
        HttpClient client,
        BungieMembershipType mType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _mType = '${mType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/GetUserClanInviteSetting/$_mType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets groups recommended for you based on the groups to whom those you follow belong.
    static Future<ListOfGroupV2CardResponse> getRecommendedGroups (
        HttpClient client,
        GroupDateRange createDateRange,
        GroupType groupType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _createDateRange = '${createDateRange.value}';
        final String _groupType = '${groupType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/Recommended/$_groupType/$_createDateRange/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfGroupV2CardResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Search for Groups.
    static Future<GroupSearchResponseResponse> groupSearch (
        HttpClient client,
        GroupQuery body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/Search/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get information about a specific group of the given ID.
    static Future<GroupResponseResponse> getGroup (
        HttpClient client,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/$_groupId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get information about a specific group with the given name and type.
    static Future<GroupResponseResponse> getGroupByName (
        HttpClient client,
        String groupName,
        GroupType groupType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupName = '$groupName';
        final String _groupType = '${groupType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/Name/$_groupName/$_groupType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get information about a specific group with the given name and type. The POST version.
    static Future<GroupResponseResponse> getGroupByNameV2 (
        HttpClient client,
        GroupNameSearchRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/NameV2/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a list of available optional conversation channels and their settings.
    static Future<CEListOfGroupOptionalConversationResponse> getGroupOptionalConversations (
        HttpClient client,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/$_groupId/OptionalConversations/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return CEListOfGroupOptionalConversationResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Edit an existing group. You must have suitable permissions in the group to perform this operation. This latest revision will only edit the fields you pass in - pass null for properties you want to leave unaltered.
    static Future<Int32Response> editGroup (
        HttpClient client,
        String groupId,
        GroupEditAction body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Edit/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Edit an existing group's clan banner. You must have suitable permissions in the group to perform this operation. All fields are required.
    static Future<Int32Response> editClanBanner (
        HttpClient client,
        String groupId,
        ClanBanner body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/EditClanBanner/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Edit group options only available to a founder. You must have suitable permissions in the group to perform this operation.
    static Future<Int32Response> editFounderOptions (
        HttpClient client,
        String groupId,
        GroupOptionsEditAction body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/EditFounderOptions/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Add a new optional conversation/chat channel. Requires admin permissions to the group.
    static Future<Int64Response> addOptionalConversation (
        HttpClient client,
        String groupId,
        GroupOptionalConversationAddRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/OptionalConversations/Add/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int64Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Edit the settings of an optional conversation/chat channel. Requires admin permissions to the group.
    static Future<Int64Response> editOptionalConversation (
        HttpClient client,
        String conversationId,
        String groupId,
        GroupOptionalConversationEditRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _conversationId = '$conversationId';
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/OptionalConversations/Edit/$_conversationId/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int64Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get the list of members in a given group.
    static Future<SearchResultOfGroupMemberResponse> getMembersOfGroup (
        HttpClient client,
        int currentpage,
        String groupId,
        RuntimeGroupMemberType memberType,
        String nameSearch,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _currentpage = '$currentpage';
        final String _groupId = '$groupId';
        params['memberType'] = memberType.value;
        params['nameSearch'] = nameSearch;
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/$_groupId/Members/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfGroupMemberResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get the list of members in a given group who are of admin level or higher.
    static Future<SearchResultOfGroupMemberResponse> getAdminsAndFounderOfGroup (
        HttpClient client,
        int currentpage,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _currentpage = '$currentpage';
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/$_groupId/AdminsAndFounder/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfGroupMemberResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Edit the membership type of a given member. You must have suitable permissions in the group to perform this operation.
    static Future<Int32Response> editGroupMembership (
        HttpClient client,
        String groupId,
        String membershipId,
        BungieMembershipType membershipType,
        RuntimeGroupMemberType memberType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final String _memberType = '${memberType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/$_membershipType/$_membershipId/SetMembershipType/$_memberType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Kick a member from the given group, forcing them to reapply if they wish to re-join the group. You must have suitable permissions in the group to perform this operation.
    static Future<GroupMemberLeaveResultResponse> kickMember (
        HttpClient client,
        String groupId,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/$_membershipType/$_membershipId/Kick/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupMemberLeaveResultResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Bans the requested member from the requested group for the specified period of time.
    static Future<Int32Response> banMember (
        HttpClient client,
        String groupId,
        String membershipId,
        BungieMembershipType membershipType,
        GroupBanRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/$_membershipType/$_membershipId/Ban/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Unbans the requested member, allowing them to re-apply for membership.
    static Future<Int32Response> unbanMember (
        HttpClient client,
        String groupId,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/$_membershipType/$_membershipId/Unban/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get the list of banned members in a given group. Only accessible to group Admins and above. Not applicable to all groups. Check group features.
    static Future<SearchResultOfGroupBanResponse> getBannedMembersOfGroup (
        HttpClient client,
        int currentpage,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _currentpage = '$currentpage';
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/$_groupId/Banned/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfGroupBanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// An administrative method to allow the founder of a group or clan to give up their position to another admin permanently.
    static Future<BooleanResponse> abdicateFoundership (
        HttpClient client,
        String founderIdNew,
        String groupId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _founderIdNew = '$founderIdNew';
        final String _groupId = '$groupId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Admin/AbdicateFoundership/$_membershipType/$_founderIdNew/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get the list of users who are awaiting a decision on their application to join a given group. Modified to include application info.
    static Future<SearchResultOfGroupMemberApplicationResponse> getPendingMemberships (
        HttpClient client,
        int currentpage,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _currentpage = '$currentpage';
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/$_groupId/Members/Pending/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfGroupMemberApplicationResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get the list of users who have been invited into the group.
    static Future<SearchResultOfGroupMemberApplicationResponse> getInvitedIndividuals (
        HttpClient client,
        int currentpage,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _currentpage = '$currentpage';
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/$_groupId/Members/InvitedIndividuals/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfGroupMemberApplicationResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Approve all of the pending users for the given group.
    static Future<ListOfEntityActionResultResponse> approveAllPending (
        HttpClient client,
        String groupId,
        GroupApplicationRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/ApproveAll/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Deny all of the pending users for the given group.
    static Future<ListOfEntityActionResultResponse> denyAllPending (
        HttpClient client,
        String groupId,
        GroupApplicationRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/DenyAll/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Approve all of the pending users for the given group.
    static Future<ListOfEntityActionResultResponse> approvePendingForList (
        HttpClient client,
        String groupId,
        GroupApplicationListRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/ApproveList/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Approve the given membershipId to join the group/clan as long as they have applied.
    static Future<BooleanResponse> approvePending (
        HttpClient client,
        String groupId,
        String membershipId,
        BungieMembershipType membershipType,
        GroupApplicationRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/Approve/$_membershipType/$_membershipId/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Deny all of the pending users for the given group that match the passed-in .
    static Future<ListOfEntityActionResultResponse> denyPendingForList (
        HttpClient client,
        String groupId,
        GroupApplicationListRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/DenyList/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get information about the groups that a given member has joined.
    static Future<GetGroupsForMemberResponseResponse> getGroupsForMember (
        HttpClient client,
        GroupsForMemberFilter filter,
        GroupType groupType,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _filter = '${filter.value}';
        final String _groupType = '${groupType.value}';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/User/$_membershipType/$_membershipId/$_filter/$_groupType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GetGroupsForMemberResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Allows a founder to manually recover a group they can see in game but not on bungie.net
    static Future<GroupMembershipSearchResponseResponse> recoverGroupForFounder (
        HttpClient client,
        GroupType groupType,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupType = '${groupType.value}';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/Recover/$_membershipType/$_membershipId/$_groupType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupMembershipSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get information about the groups that a given member has applied to or been invited to.
    static Future<GroupPotentialMembershipSearchResponseResponse> getPotentialGroupsForMember (
        HttpClient client,
        GroupPotentialMemberStatus filter,
        GroupType groupType,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _filter = '${filter.value}';
        final String _groupType = '${groupType.value}';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/GroupV2/User/Potential/$_membershipType/$_membershipId/$_filter/$_groupType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupPotentialMembershipSearchResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Invite a user to join this group.
    static Future<GroupApplicationResponseResponse> individualGroupInvite (
        HttpClient client,
        String groupId,
        String membershipId,
        BungieMembershipType membershipType,
        GroupApplicationRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/IndividualInvite/$_membershipType/$_membershipId/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupApplicationResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Cancels a pending invitation to join a group.
    static Future<GroupApplicationResponseResponse> individualGroupInviteCancel (
        HttpClient client,
        String groupId,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/GroupV2/$_groupId/Members/IndividualInviteCancel/$_membershipType/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GroupApplicationResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}