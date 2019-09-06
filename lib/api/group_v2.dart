import '../helpers/http.dart';
import '../responses/dictionary_ofint32_andstring_response.dart';
import '../responses/list_of_group_theme_response.dart';
import '../responses/boolean_response.dart';
import '../responses/list_of_group_v2_card_response.dart';
import '../responses/group_search_response_response.dart';
import '../responses/group_response_response.dart';
import '../responses/celist_of_group_optional_conversation_response.dart';
import '../responses/int32_response.dart';
import '../responses/int64_response.dart';
import '../responses/search_result_of_group_member_response.dart';
import '../responses/group_member_leave_result_response.dart';
import '../responses/search_result_of_group_ban_response.dart';
import '../responses/search_result_of_group_member_application_response.dart';
import '../responses/list_of_entity_action_result_response.dart';
import '../responses/group_membership_search_response_response.dart';
import '../responses/group_potential_membership_search_response_response.dart';
import '../responses/group_application_response_response.dart';
import '../models/group_query.dart';
import '../models/group_name_search_request.dart';
import '../models/group_edit_action.dart';
import '../models/clan_banner.dart';
import '../models/group_options_edit_action.dart';
import '../models/group_optional_conversation_add_request.dart';
import '../models/group_optional_conversation_edit_request.dart';
import '../models/group_ban_request.dart';
import '../models/group_application_request.dart';
import '../models/group_application_list_request.dart';

class GroupV2 {
  /// Returns a list of all available group avatars for the signed-in user.
  static Future<DictionaryOfint32AndstringResponse> getAvailableAvatars(
    HttpClient client,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/GetAvailableAvatars/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DictionaryOfint32AndstringResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns a list of all available group themes.
  static Future<ListOfGroupThemeResponse> getAvailableThemes(
    HttpClient client,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/GetAvailableThemes/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfGroupThemeResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets the state of the user&#39;s clan invite preferences for a particular membership type - true if they wish to be invited to clans, false otherwise.
  static Future<booleanResponse> getUserClanInviteSetting(
    HttpClient client,
    int mType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/GetUserClanInviteSetting/${mType}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return booleanResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets groups recommended for you based on the groups to whom those you follow belong.
  static Future<ListOfGroupV2CardResponse> getRecommendedGroups(
    HttpClient client,
    int createDateRange,
    int groupType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/Recommended/${groupType}/${createDateRange}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfGroupV2CardResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Search for Groups.
  static Future<GroupSearchResponseResponse> groupSearch(
    HttpClient client,
    GroupQuery body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/Search/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get information about a specific group of the given ID.
  static Future<GroupResponseResponse> getGroup(
    HttpClient client,
    String groupId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/${groupId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get information about a specific group with the given name and type.
  static Future<GroupResponseResponse> getGroupByName(
    HttpClient client,
    String groupName,
    int groupType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/Name/${groupName}/${groupType}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get information about a specific group with the given name and type. The POST version.
  static Future<GroupResponseResponse> getGroupByNameV2(
    HttpClient client,
    GroupNameSearchRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/NameV2/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets a list of available optional conversation channels and their settings.
  static Future<CEListOfGroupOptionalConversationResponse> getGroupOptionalConversations(
    HttpClient client,
    String groupId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/${groupId}/OptionalConversations/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return CEListOfGroupOptionalConversationResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Edit an existing group. You must have suitable permissions in the group to perform this operation. This latest revision will only edit the fields you pass in - pass null for properties you want to leave unaltered.
  static Future<int32Response> editGroup(
    HttpClient client,
    String groupId,
    GroupEditAction body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Edit/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int32Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Edit an existing group&#39;s clan banner. You must have suitable permissions in the group to perform this operation. All fields are required.
  static Future<int32Response> editClanBanner(
    HttpClient client,
    String groupId,
    ClanBanner body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/EditClanBanner/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int32Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Edit group options only available to a founder. You must have suitable permissions in the group to perform this operation.
  static Future<int32Response> editFounderOptions(
    HttpClient client,
    String groupId,
    GroupOptionsEditAction body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/EditFounderOptions/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int32Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Add a new optional conversation&#x2F;chat channel. Requires admin permissions to the group.
  static Future<int64Response> addOptionalConversation(
    HttpClient client,
    String groupId,
    GroupOptionalConversationAddRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/OptionalConversations/Add/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int64Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Edit the settings of an optional conversation&#x2F;chat channel. Requires admin permissions to the group.
  static Future<int64Response> editOptionalConversation(
    HttpClient client,
    String conversationId,
    String groupId,
    GroupOptionalConversationEditRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/OptionalConversations/Edit/${conversationId}/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int64Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get the list of members in a given group.
  static Future<SearchResultOfGroupMemberResponse> getMembersOfGroup(
    HttpClient client,
    int currentpage,
    String groupId,
    int memberType,
    String nameSearch,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['memberType'] = memberType;
    params['nameSearch'] = nameSearch;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/${groupId}/Members/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return SearchResultOfGroupMemberResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get the list of members in a given group who are of admin level or higher.
  static Future<SearchResultOfGroupMemberResponse> getAdminsAndFounderOfGroup(
    HttpClient client,
    int currentpage,
    String groupId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/${groupId}/AdminsAndFounder/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return SearchResultOfGroupMemberResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Edit the membership type of a given member. You must have suitable permissions in the group to perform this operation.
  static Future<int32Response> editGroupMembership(
    HttpClient client,
    String groupId,
    String membershipId,
    int membershipType,
    int memberType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/SetMembershipType/${memberType}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int32Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Kick a member from the given group, forcing them to reapply if they wish to re-join the group. You must have suitable permissions in the group to perform this operation.
  static Future<GroupMemberLeaveResultResponse> kickMember(
    HttpClient client,
    String groupId,
    String membershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/Kick/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupMemberLeaveResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Bans the requested member from the requested group for the specified period of time.
  static Future<int32Response> banMember(
    HttpClient client,
    String groupId,
    String membershipId,
    int membershipType,
    GroupBanRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/Ban/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int32Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Unbans the requested member, allowing them to re-apply for membership.
  static Future<int32Response> unbanMember(
    HttpClient client,
    String groupId,
    String membershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/${membershipType}/${membershipId}/Unban/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return int32Response.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get the list of banned members in a given group. Only accessible to group Admins and above. Not applicable to all groups. Check group features.
  static Future<SearchResultOfGroupBanResponse> getBannedMembersOfGroup(
    HttpClient client,
    int currentpage,
    String groupId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/${groupId}/Banned/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return SearchResultOfGroupBanResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// An administrative method to allow the founder of a group or clan to give up their position to another admin permanently.
  static Future<booleanResponse> abdicateFoundership(
    HttpClient client,
    String founderIdNew,
    String groupId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Admin/AbdicateFoundership/${membershipType}/${founderIdNew}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return booleanResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get the list of users who are awaiting a decision on their application to join a given group. Modified to include application info.
  static Future<SearchResultOfGroupMemberApplicationResponse> getPendingMemberships(
    HttpClient client,
    int currentpage,
    String groupId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/${groupId}/Members/Pending/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return SearchResultOfGroupMemberApplicationResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get the list of users who have been invited into the group.
  static Future<SearchResultOfGroupMemberApplicationResponse> getInvitedIndividuals(
    HttpClient client,
    int currentpage,
    String groupId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/${groupId}/Members/InvitedIndividuals/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return SearchResultOfGroupMemberApplicationResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Approve all of the pending users for the given group.
  static Future<ListOfEntityActionResultResponse> approveAllPending(
    HttpClient client,
    String groupId,
    GroupApplicationRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/ApproveAll/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Deny all of the pending users for the given group.
  static Future<ListOfEntityActionResultResponse> denyAllPending(
    HttpClient client,
    String groupId,
    GroupApplicationRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/DenyAll/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Approve all of the pending users for the given group.
  static Future<ListOfEntityActionResultResponse> approvePendingForList(
    HttpClient client,
    String groupId,
    GroupApplicationListRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/ApproveList/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Approve the given membershipId to join the group&#x2F;clan as long as they have applied.
  static Future<booleanResponse> approvePending(
    HttpClient client,
    String groupId,
    String membershipId,
    int membershipType,
    GroupApplicationRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/Approve/${membershipType}/${membershipId}/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return booleanResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Deny all of the pending users for the given group that match the passed-in .
  static Future<ListOfEntityActionResultResponse> denyPendingForList(
    HttpClient client,
    String groupId,
    GroupApplicationListRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/DenyList/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfEntityActionResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get information about the groups that a given member has joined.
  static Future<GroupMembershipSearchResponseResponse> getGroupsForMember(
    HttpClient client,
    int filter,
    int groupType,
    String membershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/User/${membershipType}/${membershipId}/${filter}/${groupType}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupMembershipSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get information about the groups that a given member has applied to or been invited to.
  static Future<GroupPotentialMembershipSearchResponseResponse> getPotentialGroupsForMember(
    HttpClient client,
    int filter,
    int groupType,
    String membershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/GroupV2/User/Potential/${membershipType}/${membershipId}/${filter}/${groupType}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupPotentialMembershipSearchResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Invite a user to join this group.
  static Future<GroupApplicationResponseResponse> individualGroupInvite(
    HttpClient client,
    String groupId,
    String membershipId,
    int membershipType,
    GroupApplicationRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/IndividualInvite/${membershipType}/${membershipId}/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupApplicationResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Cancels a pending invitation to join a group.
  static Future<GroupApplicationResponseResponse> individualGroupInviteCancel(
    HttpClient client,
    String groupId,
    String membershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/GroupV2/${groupId}/Members/IndividualInviteCancel/${membershipType}/${membershipId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return GroupApplicationResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
}
