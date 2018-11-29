import '../helpers/http.dart';
import '../responses/destiny_manifest_response.dart';
import '../responses/destiny_definition_response.dart';
import '../responses/ienumerable_of_user_info_card_response.dart';
import '../responses/destiny_linked_profiles_response_response.dart';
import '../responses/destiny_profile_response_response.dart';
import '../responses/destiny_character_response_response.dart';
import '../responses/destiny_milestone_response.dart';
import '../responses/destiny_item_response_response.dart';
import '../responses/destiny_vendors_response_response.dart';
import '../responses/destiny_vendor_response_response.dart';
import '../responses/destiny_collectible_node_detail_response_response.dart';
import '../responses/int32_response.dart';
import '../responses/destiny_equip_item_results_response.dart';
import '../responses/destiny_item_change_response_response.dart';
import '../responses/destiny_post_game_carnage_report_data_response.dart';
import '../responses/read_only_dictionary_ofstring_and_destiny_historical_stats_definition_response.dart';
import '../responses/destiny_leaderboard_results_response.dart';
import '../responses/list_of_destiny_clan_aggregate_stat_response.dart';
import '../responses/destiny_entity_search_result_response.dart';
import '../responses/destiny_historical_stats_results_response.dart';
import '../responses/destiny_historical_stats_account_result_response.dart';
import '../responses/destiny_activity_history_results_response.dart';
import '../responses/destiny_historical_weapon_stats_data_response.dart';
import '../responses/destiny_aggregate_activity_results_response.dart';
import '../responses/destiny_milestone_content_response.dart';
import '../responses/dictionary_ofuint32_and_destiny_public_milestone_response.dart';
import '../responses/awa_initialize_response_response.dart';
import '../responses/awa_authorization_result_response.dart';
import '../models/destiny_item_transfer_request.dart';
import '../models/destiny_postmaster_transfer_request.dart';
import '../models/destiny_item_action_request.dart';
import '../models/destiny_item_set_action_request.dart';
import '../models/destiny_item_state_request.dart';
import '../models/destiny_insert_plugs_action_request.dart';
import '../models/destiny_report_offense_pgcr_request.dart';
import '../models/awa_permission_requested.dart';
import '../models/awa_user_response.dart';
class Destiny2{
    static Future<DestinyManifestResponse> getDestinyManifest (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Manifest/", params);
        return client.request(config).then((response){
            return DestinyManifestResponse.fromJson(response);
        });
    }
    static Future<DestinyDefinitionResponse> getDestinyEntityDefinition (
        HttpClient client,
        String entityType,
        int hashIdentifier,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Manifest/${entityType}/{hashIdentifier}/", params);
        return client.request(config).then((response){
            return DestinyDefinitionResponse.fromJson(response);
        });
    }
    static Future<IEnumerableOfUserInfoCardResponse> searchDestinyPlayer (
        HttpClient client,
        String displayName,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/SearchDestinyPlayer/${membershipType}/{displayName}/", params);
        return client.request(config).then((response){
            return IEnumerableOfUserInfoCardResponse.fromJson(response);
        });
    }
    static Future<DestinyLinkedProfilesResponseResponse> getLinkedProfiles (
        HttpClient client,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Profile/{membershipId}/LinkedProfiles/", params);
        return client.request(config).then((response){
            return DestinyLinkedProfilesResponseResponse.fromJson(response);
        });
    }
    static Future<DestinyProfileResponseResponse> getProfile (
        HttpClient client,
        List<int> components,
        int destinyMembershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        params['components'] = "${ components }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Profile/{destinyMembershipId}/", params);
        return client.request(config).then((response){
            return DestinyProfileResponseResponse.fromJson(response);
        });
    }
    static Future<DestinyCharacterResponseResponse> getCharacter (
        HttpClient client,
        int characterId,
        List<int> components,
        int destinyMembershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        params['components'] = "${ components }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/", params);
        return client.request(config).then((response){
            return DestinyCharacterResponseResponse.fromJson(response);
        });
    }
    static Future<DestinyMilestoneResponse> getClanWeeklyRewardState (
        HttpClient client,
        int groupId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Clan/${groupId}/WeeklyRewardState/", params);
        return client.request(config).then((response){
            return DestinyMilestoneResponse.fromJson(response);
        });
    }
    static Future<DestinyItemResponseResponse> getItem (
        HttpClient client,
        List<int> components,
        int destinyMembershipId,
        int itemInstanceId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        params['components'] = "${ components }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Profile/{destinyMembershipId}/Item/{itemInstanceId}/", params);
        return client.request(config).then((response){
            return DestinyItemResponseResponse.fromJson(response);
        });
    }
    static Future<DestinyVendorsResponseResponse> getVendors (
        HttpClient client,
        int characterId,
        List<int> components,
        int destinyMembershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        params['components'] = "${ components }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/", params);
        return client.request(config).then((response){
            return DestinyVendorsResponseResponse.fromJson(response);
        });
    }
    static Future<DestinyVendorResponseResponse> getVendor (
        HttpClient client,
        int characterId,
        List<int> components,
        int destinyMembershipId,
        int membershipType,
        int vendorHash,
    ) {
        Map<String, String> params = new Map();
        params['components'] = "${ components }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/{vendorHash}/", params);
        return client.request(config).then((response){
            return DestinyVendorResponseResponse.fromJson(response);
        });
    }
    static Future<DestinyCollectibleNodeDetailResponseResponse> getCollectibleNodeDetails (
        HttpClient client,
        int characterId,
        int collectiblePresentationNodeHash,
        List<int> components,
        int destinyMembershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        params['components'] = "${ components }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Collectibles/{collectiblePresentationNodeHash}/", params);
        return client.request(config).then((response){
            return DestinyCollectibleNodeDetailResponseResponse.fromJson(response);
        });
    }
    static Future<int32Response> transferItem (
        HttpClient client,
        DestinyItemTransferRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Actions/Items/TransferItem/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<int32Response> pullFromPostmaster (
        HttpClient client,
        DestinyPostmasterTransferRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Actions/Items/PullFromPostmaster/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<int32Response> equipItem (
        HttpClient client,
        DestinyItemActionRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Actions/Items/EquipItem/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<DestinyEquipItemResultsResponse> equipItems (
        HttpClient client,
        DestinyItemSetActionRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Actions/Items/EquipItems/", params);
        config.body = body;
        return client.request(config).then((response){
            return DestinyEquipItemResultsResponse.fromJson(response);
        });
    }
    static Future<int32Response> setItemLockState (
        HttpClient client,
        DestinyItemStateRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Actions/Items/SetLockState/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<DestinyItemChangeResponseResponse> insertSocketPlug (
        HttpClient client,
        DestinyInsertPlugsActionRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Actions/Items/InsertSocketPlug/", params);
        config.body = body;
        return client.request(config).then((response){
            return DestinyItemChangeResponseResponse.fromJson(response);
        });
    }
    static Future<DestinyPostGameCarnageReportDataResponse> getPostGameCarnageReport (
        HttpClient client,
        int activityId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Stats/PostGameCarnageReport/${activityId}/", params);
        return client.request(config).then((response){
            return DestinyPostGameCarnageReportDataResponse.fromJson(response);
        });
    }
    static Future<int32Response> reportOffensivePostGameCarnageReportPlayer (
        HttpClient client,
        int activityId,
        DestinyReportOffensePgcrRequest body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Stats/PostGameCarnageReport/${activityId}/Report/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse> getHistoricalStatsDefinition (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Stats/Definition/", params);
        return client.request(config).then((response){
            return ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse.fromJson(response);
        });
    }
    static Future<DestinyLeaderboardResultsResponse> getClanLeaderboards (
        HttpClient client,
        int groupId,
        int maxtop,
        String modes,
        String statid,
    ) {
        Map<String, String> params = new Map();
        params['maxtop'] = "${ maxtop }";
        params['modes'] = "${ modes }";
        params['statid'] = "${ statid }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Stats/Leaderboards/Clans/${groupId}/", params);
        return client.request(config).then((response){
            return DestinyLeaderboardResultsResponse.fromJson(response);
        });
    }
    static Future<ListOfDestinyClanAggregateStatResponse> getClanAggregateStats (
        HttpClient client,
        int groupId,
        String modes,
    ) {
        Map<String, String> params = new Map();
        params['modes'] = "${ modes }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Stats/AggregateClanStats/${groupId}/", params);
        return client.request(config).then((response){
            return ListOfDestinyClanAggregateStatResponse.fromJson(response);
        });
    }
    static Future<DestinyLeaderboardResultsResponse> getLeaderboards (
        HttpClient client,
        int destinyMembershipId,
        int maxtop,
        int membershipType,
        String modes,
        String statid,
    ) {
        Map<String, String> params = new Map();
        params['maxtop'] = "${ maxtop }";
        params['modes'] = "${ modes }";
        params['statid'] = "${ statid }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Account/{destinyMembershipId}/Stats/Leaderboards/", params);
        return client.request(config).then((response){
            return DestinyLeaderboardResultsResponse.fromJson(response);
        });
    }
    static Future<DestinyLeaderboardResultsResponse> getLeaderboardsForCharacter (
        HttpClient client,
        int characterId,
        int destinyMembershipId,
        int maxtop,
        int membershipType,
        String modes,
        String statid,
    ) {
        Map<String, String> params = new Map();
        params['maxtop'] = "${ maxtop }";
        params['modes'] = "${ modes }";
        params['statid'] = "${ statid }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Stats/Leaderboards/${membershipType}/{destinyMembershipId}/{characterId}/", params);
        return client.request(config).then((response){
            return DestinyLeaderboardResultsResponse.fromJson(response);
        });
    }
    static Future<DestinyEntitySearchResultResponse> searchDestinyEntities (
        HttpClient client,
        int page,
        String searchTerm,
        String type,
    ) {
        Map<String, String> params = new Map();
        params['page'] = "${ page }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Armory/Search/${type}/{searchTerm}/", params);
        return client.request(config).then((response){
            return DestinyEntitySearchResultResponse.fromJson(response);
        });
    }
    static Future<DestinyHistoricalStatsResultsResponse> getHistoricalStats (
        HttpClient client,
        int characterId,
        String dayend,
        String daystart,
        int destinyMembershipId,
        List<int> groups,
        int membershipType,
        List<int> modes,
        int periodType,
    ) {
        Map<String, String> params = new Map();
        params['dayend'] = "${ dayend }";
        params['daystart'] = "${ daystart }";
        params['groups'] = "${ groups }";
        params['modes'] = "${ modes }";
        params['periodType'] = "${ periodType }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/", params);
        return client.request(config).then((response){
            return DestinyHistoricalStatsResultsResponse.fromJson(response);
        });
    }
    static Future<DestinyHistoricalStatsAccountResultResponse> getHistoricalStatsForAccount (
        HttpClient client,
        int destinyMembershipId,
        List<int> groups,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        params['groups'] = "${ groups }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Account/{destinyMembershipId}/Stats/", params);
        return client.request(config).then((response){
            return DestinyHistoricalStatsAccountResultResponse.fromJson(response);
        });
    }
    static Future<DestinyActivityHistoryResultsResponse> getActivityHistory (
        HttpClient client,
        int characterId,
        int count,
        int destinyMembershipId,
        int membershipType,
        int mode,
        int page,
    ) {
        Map<String, String> params = new Map();
        params['count'] = "${ count }";
        params['mode'] = "${ mode }";
        params['page'] = "${ page }";
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/Activities/", params);
        return client.request(config).then((response){
            return DestinyActivityHistoryResultsResponse.fromJson(response);
        });
    }
    static Future<DestinyHistoricalWeaponStatsDataResponse> getUniqueWeaponHistory (
        HttpClient client,
        int characterId,
        int destinyMembershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/UniqueWeapons/", params);
        return client.request(config).then((response){
            return DestinyHistoricalWeaponStatsDataResponse.fromJson(response);
        });
    }
    static Future<DestinyAggregateActivityResultsResponse> getDestinyAggregateActivityStats (
        HttpClient client,
        int characterId,
        int destinyMembershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/${membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/AggregateActivityStats/", params);
        return client.request(config).then((response){
            return DestinyAggregateActivityResultsResponse.fromJson(response);
        });
    }
    static Future<DestinyMilestoneContentResponse> getPublicMilestoneContent (
        HttpClient client,
        int milestoneHash,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Milestones/${milestoneHash}/Content/", params);
        return client.request(config).then((response){
            return DestinyMilestoneContentResponse.fromJson(response);
        });
    }
    static Future<DictionaryOfuint32AndDestinyPublicMilestoneResponse> getPublicMilestones (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Milestones/", params);
        return client.request(config).then((response){
            return DictionaryOfuint32AndDestinyPublicMilestoneResponse.fromJson(response);
        });
    }
    static Future<AwaInitializeResponseResponse> awaInitializeRequest (
        HttpClient client,
        AwaPermissionRequested body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Awa/Initialize/", params);
        config.body = body;
        return client.request(config).then((response){
            return AwaInitializeResponseResponse.fromJson(response);
        });
    }
    static Future<int32Response> awaProvideAuthorizationResult (
        HttpClient client,
        AwaUserResponse body
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('POST', "/Destiny2/Awa/AwaProvideAuthorizationResult/", params);
        config.body = body;
        return client.request(config).then((response){
            return int32Response.fromJson(response);
        });
    }
    static Future<AwaAuthorizationResultResponse> awaGetActionToken (
        HttpClient client,
        String correlationId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Destiny2/Awa/GetActionToken/${correlationId}/", params);
        return client.request(config).then((response){
            return AwaAuthorizationResultResponse.fromJson(response);
        });
    }
}