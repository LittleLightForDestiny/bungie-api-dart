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
import { BungieMembershipType } from '../common';
import { CEListOfPublicPartnershipDetailServerResponse, GeneralUserServerResponse, ListOfGeneralUserServerResponse, ListOfUserAliasServerResponse, ListOfUserThemeServerResponse, UserMembershipDataServerResponse } from './responses';
export interface GetBungieNetUserByIdParams {
    /** The requested Bungie.net membership id. */
    id: number;
}
/** Loads a bungienet user by membership id. */
export declare function getBungieNetUserById(http: HttpClient, params: GetBungieNetUserByIdParams): Promise<GeneralUserServerResponse>;
export interface GetUserAliasesParams {
    /** The requested Bungie.net membership id. */
    id: number;
}
/** Loads aliases of a bungienet membership id. */
export declare function getUserAliases(http: HttpClient, params: GetUserAliasesParams): Promise<ListOfUserAliasServerResponse>;
export interface SearchUsersParams {
    /** The search string. */
    q?: string;
}
/** Returns a list of possible users based on the search string */
export declare function searchUsers(http: HttpClient, params: SearchUsersParams): Promise<ListOfGeneralUserServerResponse>;
/** Returns a list of all available user themes. */
export declare function getAvailableThemes(http: HttpClient): Promise<ListOfUserThemeServerResponse>;
export interface GetMembershipDataByIdParams {
    /** The membership ID of the target user. */
    membershipId: number;
    /** Type of the supplied membership ID. */
    membershipType: BungieMembershipType;
}
/**
 * Returns a list of accounts associated with the supplied membership ID and
 * membership type. This will include all linked accounts (even when hidden) if
 * supplied credentials permit it.
 */
export declare function getMembershipDataById(http: HttpClient, params: GetMembershipDataByIdParams): Promise<UserMembershipDataServerResponse>;
/**
 * Returns a list of accounts associated with signed in user. This is useful for
 * OAuth implementations that do not give you access to the token response.
 */
export declare function getMembershipDataForCurrentUser(http: HttpClient): Promise<UserMembershipDataServerResponse>;
export interface GetPartnershipsParams {
    /** The ID of the member for whom partnerships should be returned. */
    membershipId: number;
}
/** Returns a user's linked Partnerships. */
export declare function getPartnerships(http: HttpClient, params: GetPartnershipsParams): Promise<CEListOfPublicPartnershipDetailServerResponse>;
