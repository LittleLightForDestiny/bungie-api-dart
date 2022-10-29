import '../helpers/http.dart';
import '../enums/bungie_membership_type.dart';
import '../enums/destiny_activity_mode_type.dart';
import '../enums/destiny_component_type.dart';
import '../enums/destiny_stats_group_type.dart';
import '../enums/destiny_vendor_filter.dart';
import '../enums/period_type.dart';
import '../models/awa_permission_requested.dart';
import '../models/awa_user_response.dart';
import '../models/destiny_insert_plugs_action_request.dart';
import '../models/destiny_insert_plugs_free_action_request.dart';
import '../models/destiny_item_action_request.dart';
import '../models/destiny_item_set_action_request.dart';
import '../models/destiny_item_state_request.dart';
import '../models/destiny_item_transfer_request.dart';
import '../models/destiny_postmaster_transfer_request.dart';
import '../models/destiny_report_offense_pgcr_request.dart';
import '../models/exact_search_request.dart';
import '../responses/awa_authorization_result_response.dart';
import '../responses/awa_initialize_response_response.dart';
import '../responses/clan_banner_source_response.dart';
import '../responses/destiny_activity_history_results_response.dart';
import '../responses/destiny_aggregate_activity_results_response.dart';
import '../responses/destiny_character_response_response.dart';
import '../responses/destiny_collectible_node_detail_response_response.dart';
import '../responses/destiny_definition_response.dart';
import '../responses/destiny_entity_search_result_response.dart';
import '../responses/destiny_equip_item_results_response.dart';
import '../responses/destiny_historical_stats_account_result_response.dart';
import '../responses/destiny_historical_stats_results_response.dart';
import '../responses/destiny_historical_weapon_stats_data_response.dart';
import '../responses/destiny_item_change_response_response.dart';
import '../responses/destiny_item_response_response.dart';
import '../responses/destiny_leaderboard_results_response.dart';
import '../responses/destiny_linked_profiles_response_response.dart';
import '../responses/destiny_manifest_response.dart';
import '../responses/destiny_milestone_content_response.dart';
import '../responses/destiny_milestone_response.dart';
import '../responses/destiny_post_game_carnage_report_data_response.dart';
import '../responses/destiny_profile_response_response.dart';
import '../responses/destiny_public_vendors_response_response.dart';
import '../responses/destiny_vendor_response_response.dart';
import '../responses/destiny_vendors_response_response.dart';
import '../responses/dictionary_ofuint32_and_destiny_public_milestone_response.dart';
import '../responses/ienumerable_of_user_info_card_response.dart';
import '../responses/int32_response.dart';
import '../responses/list_of_destiny_clan_aggregate_stat_response.dart';
import '../responses/read_only_dictionary_ofstring_and_destiny_historical_stats_definition_response.dart';
class Destiny2{
    /// Returns the current version of the manifest as a json object.
    static Future<DestinyManifestResponse> getDestinyManifest (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Manifest/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyManifestResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the static definition of an entity of the given Type and hash identifier. Examine the API Documentation for the Type Names of entities that have their own definitions. Note that the return type will always *inherit from* DestinyDefinition, but the specific type returned will be the requested entity type if it can be found. Please don't use this as a chatty alternative to the Manifest database if you require large sets of data, but for simple and one-off accesses this should be handy.
    static Future<DestinyDefinitionResponse> getDestinyEntityDefinition (
        HttpClient client,
        String entityType,
        int hashIdentifier,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _entityType = '$entityType';
        final String _hashIdentifier = '$hashIdentifier';
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Manifest/$_entityType/$_hashIdentifier/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyDefinitionResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a list of Destiny memberships given a global Bungie Display Name. This method will hide overridden memberships due to cross save.
    static Future<IEnumerableOfUserInfoCardResponse> searchDestinyPlayerByBungieName (
        HttpClient client,
        BungieMembershipType membershipType,
        ExactSearchRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/SearchDestinyPlayerByBungieName/$_membershipType/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return IEnumerableOfUserInfoCardResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a summary information about all profiles linked to the requesting membership type/membership ID that have valid Destiny information. The passed-in Membership Type/Membership ID may be a Bungie.Net membership or a Destiny membership. It only returns the minimal amount of data to begin making more substantive requests, but will hopefully serve as a useful alternative to UserServices for people who just care about Destiny data. Note that it will only return linked accounts whose linkages you are allowed to view.
    static Future<DestinyLinkedProfilesResponseResponse> getLinkedProfiles (
        HttpClient client,
        bool getAllMemberships,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        params['getAllMemberships'] = getAllMemberships;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Profile/$_membershipId/LinkedProfiles/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyLinkedProfilesResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns Destiny Profile information for the supplied membership.
    static Future<DestinyProfileResponseResponse> getProfile (
        HttpClient client,
        List<DestinyComponentType> components,
        String destinyMembershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['components'] = components.map((DestinyComponentType components)=>components.value).toList();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Profile/$_destinyMembershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyProfileResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns character information for the supplied character.
    static Future<DestinyCharacterResponseResponse> getCharacter (
        HttpClient client,
        String characterId,
        List<DestinyComponentType> components,
        String destinyMembershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['components'] = components.map((DestinyComponentType components)=>components.value).toList();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Profile/$_destinyMembershipId/Character/$_characterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyCharacterResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns information on the weekly clan rewards and if the clan has earned them or not. Note that this will always report rewards as not redeemed.
    static Future<DestinyMilestoneResponse> getClanWeeklyRewardState (
        HttpClient client,
        String groupId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Clan/$_groupId/WeeklyRewardState/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyMilestoneResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the dictionary of values for the Clan Banner
    static Future<ClanBannerSourceResponse> getClanBannerSource (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Clan/ClanBannerDictionary/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ClanBannerSourceResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieve the details of an instanced Destiny Item. An instanced Destiny item is one with an ItemInstanceId. Non-instanced items, such as materials, have no useful instance-specific details and thus are not queryable here.
    static Future<DestinyItemResponseResponse> getItem (
        HttpClient client,
        List<DestinyComponentType> components,
        String destinyMembershipId,
        String itemInstanceId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _itemInstanceId = '$itemInstanceId';
        final String _membershipType = '${membershipType.value}';
        params['components'] = components.map((DestinyComponentType components)=>components.value).toList();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Profile/$_destinyMembershipId/Item/$_itemInstanceId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyItemResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get currently available vendors from the list of vendors that can possibly have rotating inventory. Note that this does not include things like preview vendors and vendors-as-kiosks, neither of whom have rotating/dynamic inventories. Use their definitions as-is for those.
    static Future<DestinyVendorsResponseResponse> getVendors (
        HttpClient client,
        String characterId,
        List<DestinyComponentType> components,
        String destinyMembershipId,
        DestinyVendorFilter filter,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['components'] = components.map((DestinyComponentType components)=>components.value).toList();
        params['filter'] = filter.value;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Profile/$_destinyMembershipId/Character/$_characterId/Vendors/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyVendorsResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get the details of a specific Vendor.
    static Future<DestinyVendorResponseResponse> getVendor (
        HttpClient client,
        String characterId,
        List<DestinyComponentType> components,
        String destinyMembershipId,
        BungieMembershipType membershipType,
        int vendorHash,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        final String _vendorHash = '$vendorHash';
        params['components'] = components.map((DestinyComponentType components)=>components.value).toList();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Profile/$_destinyMembershipId/Character/$_characterId/Vendors/$_vendorHash/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyVendorResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Get items available from vendors where the vendors have items for sale that are common for everyone. If any portion of the Vendor's available inventory is character or account specific, we will be unable to return their data from this endpoint due to the way that available inventory is computed. As I am often guilty of saying: 'It's a long story...'
    static Future<DestinyPublicVendorsResponseResponse> getPublicVendors (
        HttpClient client,
        List<DestinyComponentType> components,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['components'] = components.map((DestinyComponentType components)=>components.value).toList();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Vendors/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyPublicVendorsResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Given a Presentation Node that has Collectibles as direct descendants, this will return item details about those descendants in the context of the requesting character.
    static Future<DestinyCollectibleNodeDetailResponseResponse> getCollectibleNodeDetails (
        HttpClient client,
        String characterId,
        int collectiblePresentationNodeHash,
        List<DestinyComponentType> components,
        String destinyMembershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _collectiblePresentationNodeHash = '$collectiblePresentationNodeHash';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['components'] = components.map((DestinyComponentType components)=>components.value).toList();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Profile/$_destinyMembershipId/Character/$_characterId/Collectibles/$_collectiblePresentationNodeHash/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyCollectibleNodeDetailResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Transfer an item to/from your vault. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it's an instanced item. itshappening.gif
    static Future<Int32Response> transferItem (
        HttpClient client,
        DestinyItemTransferRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/TransferItem/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Extract an item from the Postmaster, with whatever implications that may entail. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it's an instanced item.
    static Future<Int32Response> pullFromPostmaster (
        HttpClient client,
        DestinyPostmasterTransferRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/PullFromPostmaster/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Equip an item. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline.
    static Future<Int32Response> equipItem (
        HttpClient client,
        DestinyItemActionRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/EquipItem/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Equip a list of items by itemInstanceIds. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Any items not found on your character will be ignored.
    static Future<DestinyEquipItemResultsResponse> equipItems (
        HttpClient client,
        DestinyItemSetActionRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/EquipItems/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyEquipItemResultsResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Set the Lock State for an instanced item. You must have a valid Destiny Account.
    static Future<Int32Response> setItemLockState (
        HttpClient client,
        DestinyItemStateRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/SetLockState/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Set the Tracking State for an instanced item, if that item is a Quest or Bounty. You must have a valid Destiny Account. Yeah, it's an item.
    static Future<Int32Response> setQuestTrackedState (
        HttpClient client,
        DestinyItemStateRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/SetTrackedState/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Insert a plug into a socketed item. I know how it sounds, but I assure you it's much more G-rated than you might be guessing. We haven't decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Request must include proof of permission for 'InsertPlugs' from the account owner.
    static Future<DestinyItemChangeResponseResponse> insertSocketPlug (
        HttpClient client,
        DestinyInsertPlugsActionRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/InsertSocketPlug/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyItemChangeResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Insert a 'free' plug into an item's socket. This does not require 'Advanced Write Action' authorization and is available to 3rd-party apps, but will only work on 'free and reversible' socket actions (Perks, Armor Mods, Shaders, Ornaments, etc.). You must have a valid Destiny Account, and the character must either be in a social space, in orbit, or offline.
    static Future<DestinyItemChangeResponseResponse> insertSocketPlugFree (
        HttpClient client,
        DestinyInsertPlugsFreeActionRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Actions/Items/InsertSocketPlugFree/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyItemChangeResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets the available post game carnage report for the activity ID.
    static Future<DestinyPostGameCarnageReportDataResponse> getPostGameCarnageReport (
        HttpClient client,
        String activityId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _activityId = '$activityId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Stats/PostGameCarnageReport/$_activityId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyPostGameCarnageReportDataResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Report a player that you met in an activity that was engaging in ToS-violating activities. Both you and the offending player must have played in the activityId passed in. Please use this judiciously and only when you have strong suspicions of violation, pretty please.
    static Future<Int32Response> reportOffensivePostGameCarnageReportPlayer (
        HttpClient client,
        String activityId,
        DestinyReportOffensePgcrRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _activityId = '$activityId';
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Stats/PostGameCarnageReport/$_activityId/Report/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets historical stats definitions.
    static Future<ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse> getHistoricalStatsDefinition (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Stats/Definition/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets leaderboards with the signed in user's friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
    static Future<DestinyLeaderboardResultsResponse> getClanLeaderboards (
        HttpClient client,
        String groupId,
        int maxtop,
        String modes,
        String statid,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        params['maxtop'] = maxtop;
        params['modes'] = modes;
        params['statid'] = statid;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Stats/Leaderboards/Clans/$_groupId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyLeaderboardResultsResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets aggregated stats for a clan using the same categories as the clan leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
    static Future<ListOfDestinyClanAggregateStatResponse> getClanAggregateStats (
        HttpClient client,
        String groupId,
        String modes,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _groupId = '$groupId';
        params['modes'] = modes;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Stats/AggregateClanStats/$_groupId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfDestinyClanAggregateStatResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets leaderboards with the signed in user's friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been implemented. It is being returned for a preview of future functionality, and for public comment/suggestion/preparation.
    static Future<DestinyLeaderboardResultsResponse> getLeaderboards (
        HttpClient client,
        String destinyMembershipId,
        int maxtop,
        BungieMembershipType membershipType,
        String modes,
        String statid,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['maxtop'] = maxtop;
        params['modes'] = modes;
        params['statid'] = statid;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Account/$_destinyMembershipId/Stats/Leaderboards/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyLeaderboardResultsResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets leaderboards with the signed in user's friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
    static Future<DestinyLeaderboardResultsResponse> getLeaderboardsForCharacter (
        HttpClient client,
        String characterId,
        String destinyMembershipId,
        int maxtop,
        BungieMembershipType membershipType,
        String modes,
        String statid,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['maxtop'] = maxtop;
        params['modes'] = modes;
        params['statid'] = statid;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Stats/Leaderboards/$_membershipType/$_destinyMembershipId/$_characterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyLeaderboardResultsResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets a page list of Destiny items.
    static Future<DestinyEntitySearchResultResponse> searchDestinyEntities (
        HttpClient client,
        int page,
        String searchTerm,
        String type,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _searchTerm = '$searchTerm';
        final String _type = '$type';
        params['page'] = page;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Armory/Search/$_type/$_searchTerm/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyEntitySearchResultResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets historical stats for indicated character.
    static Future<DestinyHistoricalStatsResultsResponse> getHistoricalStats (
        HttpClient client,
        String characterId,
        String dayend,
        String daystart,
        String destinyMembershipId,
        List<DestinyStatsGroupType> groups,
        BungieMembershipType membershipType,
        List<DestinyActivityModeType> modes,
        PeriodType periodType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['dayend'] = dayend;
        params['daystart'] = daystart;
        params['groups'] = groups.map((DestinyStatsGroupType groups)=>groups.value).toList();
        params['modes'] = modes.map((DestinyActivityModeType modes)=>modes.value).toList();
        params['periodType'] = periodType.value;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Account/$_destinyMembershipId/Character/$_characterId/Stats/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyHistoricalStatsResultsResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets aggregate historical stats organized around each character for a given account.
    static Future<DestinyHistoricalStatsAccountResultResponse> getHistoricalStatsForAccount (
        HttpClient client,
        String destinyMembershipId,
        List<DestinyStatsGroupType> groups,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['groups'] = groups.map((DestinyStatsGroupType groups)=>groups.value).toList();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Account/$_destinyMembershipId/Stats/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyHistoricalStatsAccountResultResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets activity history stats for indicated character.
    static Future<DestinyActivityHistoryResultsResponse> getActivityHistory (
        HttpClient client,
        String characterId,
        int count,
        String destinyMembershipId,
        BungieMembershipType membershipType,
        DestinyActivityModeType mode,
        int page,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        params['count'] = count;
        params['mode'] = mode.value;
        params['page'] = page;
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Account/$_destinyMembershipId/Character/$_characterId/Stats/Activities/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyActivityHistoryResultsResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets details about unique weapon usage, including all exotic weapons.
    static Future<DestinyHistoricalWeaponStatsDataResponse> getUniqueWeaponHistory (
        HttpClient client,
        String characterId,
        String destinyMembershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Account/$_destinyMembershipId/Character/$_characterId/Stats/UniqueWeapons/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyHistoricalWeaponStatsDataResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets all activities the character has participated in together with aggregate statistics for those activities.
    static Future<DestinyAggregateActivityResultsResponse> getDestinyAggregateActivityStats (
        HttpClient client,
        String characterId,
        String destinyMembershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _characterId = '$characterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/$_membershipType/Account/$_destinyMembershipId/Character/$_characterId/Stats/AggregateActivityStats/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyAggregateActivityResultsResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets custom localized content for the milestone of the given hash, if it exists.
    static Future<DestinyMilestoneContentResponse> getPublicMilestoneContent (
        HttpClient client,
        int milestoneHash,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _milestoneHash = '$milestoneHash';
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Milestones/$_milestoneHash/Content/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyMilestoneContentResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets public information about currently available Milestones.
    static Future<DictionaryOfuint32AndDestinyPublicMilestoneResponse> getPublicMilestones (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Milestones/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DictionaryOfuint32AndDestinyPublicMilestoneResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Initialize a request to perform an advanced write action.
    static Future<AwaInitializeResponseResponse> awaInitializeRequest (
        HttpClient client,
        AwaPermissionRequested body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Awa/Initialize/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return AwaInitializeResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Provide the result of the user interaction. Called by the Bungie Destiny App to approve or reject a request.
    static Future<Int32Response> awaProvideAuthorizationResult (
        HttpClient client,
        AwaUserResponse body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Destiny2/Awa/AwaProvideAuthorizationResult/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return Int32Response.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the action token if user approves the request.
    static Future<AwaAuthorizationResultResponse> awaGetActionToken (
        HttpClient client,
        String correlationId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _correlationId = '$correlationId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Destiny2/Awa/GetActionToken/$_correlationId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return AwaAuthorizationResultResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}