/**
 * Bungie.Net API
 * These endpoints constitute the functionality exposed by Bungie.net, both for more traditional website functionality and for connectivity to Bungie video games and their related functionality.
 *
 * OpenAPI spec version: 2.1.1
 * Contact: support@bungie.com
 *
 * NOTE: This class is auto generated by the bungie-api-ts code generator program.
 * https://github.com/DestinyItemManager/bugie-api-ts
 * Do not edit these files manually.
 */
import { HttpClient } from '../http';
import { BungieMembershipType, int32ServerResponse } from '../common';
import { CEListOfGroupOptionalConversationServerResponse, DictionaryOfint32AndstringServerResponse, GroupApplicationResponseServerResponse, GroupCreationResponseServerResponse, GroupMemberLeaveResultServerResponse, GroupMembershipSearchResponseServerResponse, GroupPotentialMembershipSearchResponseServerResponse, GroupResponseServerResponse, GroupSearchResponseServerResponse, ListOfEntityActionResultServerResponse, ListOfGroupThemeServerResponse, ListOfGroupV2CardServerResponse, SearchResultOfGroupBanServerResponse, SearchResultOfGroupMemberApplicationServerResponse, SearchResultOfGroupMemberServerResponse, booleanServerResponse } from './responses';
import { ClanBanner, GroupAction, GroupApplicationListRequest, GroupApplicationRequest, GroupBanRequest, GroupDateRange, GroupEditAction, GroupOptionalConversationAddRequest, GroupOptionalConversationEditRequest, GroupOptionsEditAction, GroupPotentialMemberStatus, GroupQuery, GroupType, GroupsForMemberFilter, RuntimeGroupMemberType } from './interfaces';
import { int64ServerResponse } from '../platform';
/** Returns a list of all available group avatars for the signed-in user. */
export declare function getAvailableAvatars(http: HttpClient): Promise<DictionaryOfint32AndstringServerResponse>;
/** Returns a list of all available group themes. */
export declare function getAvailableThemes(http: HttpClient): Promise<ListOfGroupThemeServerResponse>;
export interface GetUserClanInviteSettingParams {
    /** The Destiny membership type of the account we wish to access settings. */
    mType: BungieMembershipType;
}
/**
 * Gets the state of the user's clan invite preferences for a particular membership
 * type - true if they wish to be invited to clans, false otherwise.
 */
export declare function getUserClanInviteSetting(http: HttpClient, params: GetUserClanInviteSettingParams): Promise<booleanServerResponse>;
export interface SetUserClanInviteSettingParams {
    /** True to allow invites of this user to clans, false otherwise. */
    allowInvites: boolean;
    /** The Destiny membership type of linked account we are manipulating. */
    mType: BungieMembershipType;
}
/**
 * Sets the state of the user's clan invite preferences - true if they wish to be
 * invited to clans, false otherwise.
 */
export declare function setUserClanInviteSetting(http: HttpClient, params: SetUserClanInviteSettingParams): Promise<int32ServerResponse>;
export interface GetRecommendedGroupsParams {
    /** Requested range in which to pull recommended groups */
    createDateRange: GroupDateRange;
    /** Type of groups requested */
    groupType: GroupType;
}
/**
 * Gets groups recommended for you based on the groups to whom those you follow
 * belong.
 */
export declare function getRecommendedGroups(http: HttpClient, params: GetRecommendedGroupsParams): Promise<ListOfGroupV2CardServerResponse>;
export interface GroupSearchParams {
    body: GroupQuery;
}
/** Search for Groups. */
export declare function groupSearch(http: HttpClient, params: GroupSearchParams): Promise<GroupSearchResponseServerResponse>;
export interface GetGroupParams {
    /** Requested group's id. */
    groupId: number;
}
/** Get information about a specific group of the given ID. */
export declare function getGroup(http: HttpClient, params: GetGroupParams): Promise<GroupResponseServerResponse>;
export interface GetGroupByNameParams {
    /** Exact name of the group to find. */
    groupName: string;
    /** Type of group to find. */
    groupType: GroupType;
}
/** Get information about a specific group with the given name and type. */
export declare function getGroupByName(http: HttpClient, params: GetGroupByNameParams): Promise<GroupResponseServerResponse>;
export interface GetGroupOptionalConversationsParams {
    /** Requested group's id. */
    groupId: number;
}
/** Gets a list of available optional conversation channels and their settings. */
export declare function getGroupOptionalConversations(http: HttpClient, params: GetGroupOptionalConversationsParams): Promise<CEListOfGroupOptionalConversationServerResponse>;
export interface CreateGroupParams {
    body: GroupAction;
}
/** Create a new group. */
export declare function createGroup(http: HttpClient, params: CreateGroupParams): Promise<GroupCreationResponseServerResponse>;
export interface EditGroupParams {
    /** Group ID of the group to edit. */
    groupId: number;
    body: GroupEditAction;
}
/**
 * Edit an existing group. You must have suitable permissions in the group to
 * perform this operation. This latest revision will only edit the fields you pass
 * in - pass null for properties you want to leave unaltered.
 */
export declare function editGroup(http: HttpClient, params: EditGroupParams): Promise<int32ServerResponse>;
export interface EditClanBannerParams {
    /** Group ID of the group to edit. */
    groupId: number;
    body: ClanBanner;
}
/**
 * Edit an existing group's clan banner. You must have suitable permissions in the
 * group to perform this operation. All fields are required.
 */
export declare function editClanBanner(http: HttpClient, params: EditClanBannerParams): Promise<int32ServerResponse>;
export interface EditFounderOptionsParams {
    /** Group ID of the group to edit. */
    groupId: number;
    body: GroupOptionsEditAction;
}
/**
 * Edit group options only available to a founder. You must have suitable
 * permissions in the group to perform this operation.
 */
export declare function editFounderOptions(http: HttpClient, params: EditFounderOptionsParams): Promise<int32ServerResponse>;
export interface AddOptionalConversationParams {
    /** Group ID of the group to edit. */
    groupId: number;
    body: GroupOptionalConversationAddRequest;
}
/**
 * Add a new optional conversation/chat channel. Requires admin permissions to the
 * group.
 */
export declare function addOptionalConversation(http: HttpClient, params: AddOptionalConversationParams): Promise<int64ServerResponse>;
export interface EditOptionalConversationParams {
    /** Conversation Id of the channel being edited. */
    conversationId: number;
    /** Group ID of the group to edit. */
    groupId: number;
    body: GroupOptionalConversationEditRequest;
}
/**
 * Edit the settings of an optional conversation/chat channel. Requires admin
 * permissions to the group.
 */
export declare function editOptionalConversation(http: HttpClient, params: EditOptionalConversationParams): Promise<int64ServerResponse>;
export interface GetMembersOfGroupParams {
    /** Page number (starting with 1). Each page has a fixed size of 50 items per page. */
    currentpage: number;
    /** The ID of the group. */
    groupId: number;
    /** Filter out other member types. Use None for all members. */
    memberType?: RuntimeGroupMemberType;
    /**
     * The name fragment upon which a search should be executed for members with
     * matching display or unique names.
     */
    nameSearch?: string;
}
/** Get the list of members in a given group. */
export declare function getMembersOfGroup(http: HttpClient, params: GetMembersOfGroupParams): Promise<SearchResultOfGroupMemberServerResponse>;
export interface GetAdminsAndFounderOfGroupParams {
    /** Page number (starting with 1). Each page has a fixed size of 50 items per page. */
    currentpage: number;
    /** The ID of the group. */
    groupId: number;
}
/** Get the list of members in a given group who are of admin level or higher. */
export declare function getAdminsAndFounderOfGroup(http: HttpClient, params: GetAdminsAndFounderOfGroupParams): Promise<SearchResultOfGroupMemberServerResponse>;
export interface EditGroupMembershipParams {
    /** ID of the group to which the member belongs. */
    groupId: number;
    /** Membership ID to modify. */
    membershipId: number;
    /** Membership type of the provide membership ID. */
    membershipType: BungieMembershipType;
    /** New membertype for the specified member. */
    memberType: RuntimeGroupMemberType;
}
/**
 * Edit the membership type of a given member. You must have suitable permissions
 * in the group to perform this operation.
 */
export declare function editGroupMembership(http: HttpClient, params: EditGroupMembershipParams): Promise<int32ServerResponse>;
export interface KickMemberParams {
    /** Group ID to kick the user from. */
    groupId: number;
    /** Membership ID to kick. */
    membershipId: number;
    /** Membership type of the provided membership ID. */
    membershipType: BungieMembershipType;
}
/**
 * Kick a member from the given group, forcing them to reapply if they wish to re-
 * join the group. You must have suitable permissions in the group to perform this
 * operation.
 */
export declare function kickMember(http: HttpClient, params: KickMemberParams): Promise<GroupMemberLeaveResultServerResponse>;
export interface BanMemberParams {
    /** Group ID that has the member to ban. */
    groupId: number;
    /** Membership ID of the member to ban from the group. */
    membershipId: number;
    /** Membership type of the provided membership ID. */
    membershipType: BungieMembershipType;
    body: GroupBanRequest;
}
/**
 * Bans the requested member from the requested group for the specified period of
 * time.
 */
export declare function banMember(http: HttpClient, params: BanMemberParams): Promise<int32ServerResponse>;
export interface UnbanMemberParams {
    groupId: number;
    /** Membership ID of the member to unban from the group */
    membershipId: number;
    /** Membership type of the provided membership ID. */
    membershipType: BungieMembershipType;
}
/** Unbans the requested member, allowing them to re-apply for membership. */
export declare function unbanMember(http: HttpClient, params: UnbanMemberParams): Promise<int32ServerResponse>;
export interface GetBannedMembersOfGroupParams {
    /** Page number (starting with 1). Each page has a fixed size of 50 entries. */
    currentpage: number;
    /** Group ID whose banned members you are fetching */
    groupId: number;
}
/**
 * Get the list of banned members in a given group. Only accessible to group Admins
 * and above. Not applicable to all groups. Check group features.
 */
export declare function getBannedMembersOfGroup(http: HttpClient, params: GetBannedMembersOfGroupParams): Promise<SearchResultOfGroupBanServerResponse>;
export interface AbdicateFoundershipParams {
    /** The new founder for this group. Must already be a group admin. */
    founderIdNew: number;
    /** The target group id. */
    groupId: number;
    /** Membership type of the provided founderIdNew. */
    membershipType: BungieMembershipType;
}
/**
 * An administrative method to allow the founder of a group or clan to give up
 * their position to another admin permanently.
 */
export declare function abdicateFoundership(http: HttpClient, params: AbdicateFoundershipParams): Promise<booleanServerResponse>;
export interface RequestGroupMembershipParams {
    /** ID of the group you would like to join. */
    groupId: number;
    /** MembershipType of the account to use when joining. */
    membershipType: BungieMembershipType;
    body: GroupApplicationRequest;
}
/** Request permission to join the given group. */
export declare function requestGroupMembership(http: HttpClient, params: RequestGroupMembershipParams): Promise<GroupApplicationResponseServerResponse>;
export interface GetPendingMembershipsParams {
    /** Page number (starting with 1). Each page has a fixed size of 50 items per page. */
    currentpage: number;
    /** ID of the group. */
    groupId: number;
}
/**
 * Get the list of users who are awaiting a decision on their application to join a
 * given group. Modified to include application info.
 */
export declare function getPendingMemberships(http: HttpClient, params: GetPendingMembershipsParams): Promise<SearchResultOfGroupMemberApplicationServerResponse>;
export interface GetInvitedIndividualsParams {
    /** Page number (starting with 1). Each page has a fixed size of 50 items per page. */
    currentpage: number;
    /** ID of the group. */
    groupId: number;
}
/** Get the list of users who have been invited into the group. */
export declare function getInvitedIndividuals(http: HttpClient, params: GetInvitedIndividualsParams): Promise<SearchResultOfGroupMemberApplicationServerResponse>;
export interface RescindGroupMembershipParams {
    /** ID of the group. */
    groupId: number;
    /** MembershipType of the account to leave. */
    membershipType: BungieMembershipType;
}
/**
 * Rescind your application to join the given group or leave the group if you are
 * already a member..
 */
export declare function rescindGroupMembership(http: HttpClient, params: RescindGroupMembershipParams): Promise<GroupMemberLeaveResultServerResponse>;
export interface ApproveAllPendingParams {
    /** ID of the group. */
    groupId: number;
    body: GroupApplicationRequest;
}
/** Approve all of the pending users for the given group. */
export declare function approveAllPending(http: HttpClient, params: ApproveAllPendingParams): Promise<ListOfEntityActionResultServerResponse>;
export interface DenyAllPendingParams {
    /** ID of the group. */
    groupId: number;
    body: GroupApplicationRequest;
}
/** Deny all of the pending users for the given group. */
export declare function denyAllPending(http: HttpClient, params: DenyAllPendingParams): Promise<ListOfEntityActionResultServerResponse>;
export interface ApprovePendingForListParams {
    /** ID of the group. */
    groupId: number;
    body: GroupApplicationListRequest;
}
/** Approve all of the pending users for the given group. */
export declare function approvePendingForList(http: HttpClient, params: ApprovePendingForListParams): Promise<ListOfEntityActionResultServerResponse>;
export interface ApprovePendingParams {
    /** ID of the group. */
    groupId: number;
    /** The membership id being approved. */
    membershipId: number;
    /** Membership type of the supplied membership ID. */
    membershipType: BungieMembershipType;
    body: GroupApplicationRequest;
}
/**
 * Approve the given membershipId to join the group/clan as long as they have
 * applied.
 */
export declare function approvePending(http: HttpClient, params: ApprovePendingParams): Promise<booleanServerResponse>;
export interface DenyPendingForListParams {
    /** ID of the group. */
    groupId: number;
    body: GroupApplicationListRequest;
}
/** Deny all of the pending users for the given group that match the passed-in . */
export declare function denyPendingForList(http: HttpClient, params: DenyPendingForListParams): Promise<ListOfEntityActionResultServerResponse>;
export interface GetGroupsForMemberParams {
    /** Filter apply to list of joined groups. */
    filter: GroupsForMemberFilter;
    /** Type of group the supplied member founded. */
    groupType: GroupType;
    /** Membership ID to for which to find founded groups. */
    membershipId: number;
    /** Membership type of the supplied membership ID. */
    membershipType: BungieMembershipType;
}
/** Get information about the groups that a given member has joined. */
export declare function getGroupsForMember(http: HttpClient, params: GetGroupsForMemberParams): Promise<GroupMembershipSearchResponseServerResponse>;
export interface GetPotentialGroupsForMemberParams {
    /** Filter apply to list of potential joined groups. */
    filter: GroupPotentialMemberStatus;
    /** Type of group the supplied member applied. */
    groupType: GroupType;
    /** Membership ID to for which to find applied groups. */
    membershipId: number;
    /** Membership type of the supplied membership ID. */
    membershipType: BungieMembershipType;
}
/**
 * Get information about the groups that a given member has applied to or been
 * invited to.
 */
export declare function getPotentialGroupsForMember(http: HttpClient, params: GetPotentialGroupsForMemberParams): Promise<GroupPotentialMembershipSearchResponseServerResponse>;
export interface IndividualGroupInviteParams {
    /** ID of the group you would like to join. */
    groupId: number;
    /** Membership id of the account being invited. */
    membershipId: number;
    /** MembershipType of the account being invited. */
    membershipType: BungieMembershipType;
    body: GroupApplicationRequest;
}
/** Invite a user to join this group. */
export declare function individualGroupInvite(http: HttpClient, params: IndividualGroupInviteParams): Promise<GroupApplicationResponseServerResponse>;
export interface IndividualGroupInviteCancelParams {
    /** ID of the group you would like to join. */
    groupId: number;
    /** Membership id of the account being cancelled. */
    membershipId: number;
    /** MembershipType of the account being cancelled. */
    membershipType: BungieMembershipType;
}
/** Cancels a pending invitation to join a group. */
export declare function individualGroupInviteCancel(http: HttpClient, params: IndividualGroupInviteCancelParams): Promise<GroupApplicationResponseServerResponse>;
