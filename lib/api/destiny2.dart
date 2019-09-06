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
import '../responses/destiny_public_vendors_response_response.dart';
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

class Destiny2 {
  /// Returns the current version of the manifest as a json object.
  static Future<DestinyManifestResponse> getDestinyManifest(
    HttpClient client,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Manifest/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyManifestResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns the static definition of an entity of the given Type and hash identifier. Examine the API Documentation for the Type Names of entities that have their own definitions. Note that the return type will always *inherit from* DestinyDefinition, but the specific type returned will be the requested entity type if it can be found. Please don&#39;t use this as a chatty alternative to the Manifest database if you require large sets of data, but for simple and one-off accesses this should be handy.
  static Future<DestinyDefinitionResponse> getDestinyEntityDefinition(
    HttpClient client,
    String entityType,
    int hashIdentifier,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Manifest/${entityType}/${hashIdentifier}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyDefinitionResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns a list of Destiny memberships given a full Gamertag or PSN ID.
  static Future<IEnumerableOfUserInfoCardResponse> searchDestinyPlayer(
    HttpClient client,
    String displayName,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/SearchDestinyPlayer/${membershipType}/${displayName}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return IEnumerableOfUserInfoCardResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns a summary information about all profiles linked to the requesting membership type&#x2F;membership ID that have valid Destiny information. The passed-in Membership Type&#x2F;Membership ID may be a Bungie.Net membership or a Destiny membership. It only returns the minimal amount of data to begin making more substantive requests, but will hopefully serve as a useful alternative to UserServices for people who just care about Destiny data. Note that it will only return linked accounts whose linkages you are allowed to view.
  static Future<DestinyLinkedProfilesResponseResponse> getLinkedProfiles(
    HttpClient client,
    String membershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Profile/${membershipId}/LinkedProfiles/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyLinkedProfilesResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns Destiny Profile information for the supplied membership.
  static Future<DestinyProfileResponseResponse> getProfile(
    HttpClient client,
    List<int> components,
    String destinyMembershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['components'] = components;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Profile/${destinyMembershipId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyProfileResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns character information for the supplied character.
  static Future<DestinyCharacterResponseResponse> getCharacter(
    HttpClient client,
    String characterId,
    List<int> components,
    String destinyMembershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['components'] = components;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Profile/${destinyMembershipId}/Character/${characterId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyCharacterResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns information on the weekly clan rewards and if the clan has earned them or not. Note that this will always report rewards as not redeemed.
  static Future<DestinyMilestoneResponse> getClanWeeklyRewardState(
    HttpClient client,
    String groupId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Clan/${groupId}/WeeklyRewardState/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyMilestoneResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Retrieve the details of an instanced Destiny Item. An instanced Destiny item is one with an ItemInstanceId. Non-instanced items, such as materials, have no useful instance-specific details and thus are not queryable here.
  static Future<DestinyItemResponseResponse> getItem(
    HttpClient client,
    List<int> components,
    String destinyMembershipId,
    String itemInstanceId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['components'] = components;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Profile/${destinyMembershipId}/Item/${itemInstanceId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyItemResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get currently available vendors from the list of vendors that can possibly have rotating inventory. Note that this does not include things like preview vendors and vendors-as-kiosks, neither of whom have rotating&#x2F;dynamic inventories. Use their definitions as-is for those.
  static Future<DestinyVendorsResponseResponse> getVendors(
    HttpClient client,
    String characterId,
    List<int> components,
    String destinyMembershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['components'] = components;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Profile/${destinyMembershipId}/Character/${characterId}/Vendors/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyVendorsResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get the details of a specific Vendor.
  static Future<DestinyVendorResponseResponse> getVendor(
    HttpClient client,
    String characterId,
    List<int> components,
    String destinyMembershipId,
    int membershipType,
    int vendorHash,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['components'] = components;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Profile/${destinyMembershipId}/Character/${characterId}/Vendors/${vendorHash}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyVendorResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Get items available from vendors where the vendors have items for sale that are common for everyone. If any portion of the Vendor&#39;s available inventory is character or account specific, we will be unable to return their data from this endpoint due to the way that available inventory is computed. As I am often guilty of saying: &#39;It&#39;s a long story...&#39;
  static Future<DestinyPublicVendorsResponseResponse> getPublicVendors(
    HttpClient client,
    List<int> components,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['components'] = components;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2//Vendors/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyPublicVendorsResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Given a Presentation Node that has Collectibles as direct descendants, this will return item details about those descendants in the context of the requesting character.
  static Future<DestinyCollectibleNodeDetailResponseResponse> getCollectibleNodeDetails(
    HttpClient client,
    String characterId,
    int collectiblePresentationNodeHash,
    List<int> components,
    String destinyMembershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['components'] = components;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Profile/${destinyMembershipId}/Character/${characterId}/Collectibles/${collectiblePresentationNodeHash}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyCollectibleNodeDetailResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Transfer an item to&#x2F;from your vault. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it&#39;s an instanced item. itshappening.gif
  static Future<int32Response> transferItem(
    HttpClient client,
    DestinyItemTransferRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Actions/Items/TransferItem/",
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
  /// Extract an item from the Postmaster, with whatever implications that may entail. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it&#39;s an instanced item.
  static Future<int32Response> pullFromPostmaster(
    HttpClient client,
    DestinyPostmasterTransferRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Actions/Items/PullFromPostmaster/",
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
  /// Equip an item. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline.
  static Future<int32Response> equipItem(
    HttpClient client,
    DestinyItemActionRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Actions/Items/EquipItem/",
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
  /// Equip a list of items by itemInstanceIds. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Any items not found on your character will be ignored.
  static Future<DestinyEquipItemResultsResponse> equipItems(
    HttpClient client,
    DestinyItemSetActionRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Actions/Items/EquipItems/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyEquipItemResultsResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Set the Lock State for an instanced item. You must have a valid Destiny Account.
  static Future<int32Response> setItemLockState(
    HttpClient client,
    DestinyItemStateRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Actions/Items/SetLockState/",
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
  /// Insert a plug into a socketed item. I know how it sounds, but I assure you it&#39;s much more G-rated than you might be guessing. We haven&#39;t decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Request must include proof of permission for &#39;InsertPlugs&#39; from the account owner.
  static Future<DestinyItemChangeResponseResponse> insertSocketPlug(
    HttpClient client,
    DestinyInsertPlugsActionRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Actions/Items/InsertSocketPlug/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyItemChangeResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets the available post game carnage report for the activity ID.
  static Future<DestinyPostGameCarnageReportDataResponse> getPostGameCarnageReport(
    HttpClient client,
    String activityId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Stats/PostGameCarnageReport/${activityId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyPostGameCarnageReportDataResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Report a player that you met in an activity that was engaging in ToS-violating activities. Both you and the offending player must have played in the activityId passed in. Please use this judiciously and only when you have strong suspicions of violation, pretty please.
  static Future<int32Response> reportOffensivePostGameCarnageReportPlayer(
    HttpClient client,
    String activityId,
    DestinyReportOffensePgcrRequest body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Stats/PostGameCarnageReport/${activityId}/Report/",
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
  /// Gets historical stats definitions.
  static Future<ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse> getHistoricalStatsDefinition(
    HttpClient client,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Stats/Definition/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  static Future<DestinyLeaderboardResultsResponse> getClanLeaderboards(
    HttpClient client,
    String groupId,
    int maxtop,
    String modes,
    String statid,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['maxtop'] = maxtop;
    params['modes'] = modes;
    params['statid'] = statid;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Stats/Leaderboards/Clans/${groupId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyLeaderboardResultsResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets aggregated stats for a clan using the same categories as the clan leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  static Future<ListOfDestinyClanAggregateStatResponse> getClanAggregateStats(
    HttpClient client,
    String groupId,
    String modes,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['modes'] = modes;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Stats/AggregateClanStats/${groupId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return ListOfDestinyClanAggregateStatResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been implemented. It is being returned for a preview of future functionality, and for public comment&#x2F;suggestion&#x2F;preparation.
  static Future<DestinyLeaderboardResultsResponse> getLeaderboards(
    HttpClient client,
    String destinyMembershipId,
    int maxtop,
    int membershipType,
    String modes,
    String statid,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['maxtop'] = maxtop;
    params['modes'] = modes;
    params['statid'] = statid;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Account/${destinyMembershipId}/Stats/Leaderboards/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyLeaderboardResultsResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  static Future<DestinyLeaderboardResultsResponse> getLeaderboardsForCharacter(
    HttpClient client,
    String characterId,
    String destinyMembershipId,
    int maxtop,
    int membershipType,
    String modes,
    String statid,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['maxtop'] = maxtop;
    params['modes'] = modes;
    params['statid'] = statid;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Stats/Leaderboards/${membershipType}/${destinyMembershipId}/${characterId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyLeaderboardResultsResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets a page list of Destiny items.
  static Future<DestinyEntitySearchResultResponse> searchDestinyEntities(
    HttpClient client,
    int page,
    String searchTerm,
    String type,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['page'] = page;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Armory/Search/${type}/${searchTerm}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyEntitySearchResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets historical stats for indicated character.
  static Future<DestinyHistoricalStatsResultsResponse> getHistoricalStats(
    HttpClient client,
    String characterId,
    String dayend,
    String daystart,
    String destinyMembershipId,
    List<int> groups,
    int membershipType,
    List<int> modes,
    int periodType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['dayend'] = dayend;
    params['daystart'] = daystart;
    params['groups'] = groups;
    params['modes'] = modes;
    params['periodType'] = periodType;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Account/${destinyMembershipId}/Character/${characterId}/Stats/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyHistoricalStatsResultsResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets aggregate historical stats organized around each character for a given account.
  static Future<DestinyHistoricalStatsAccountResultResponse> getHistoricalStatsForAccount(
    HttpClient client,
    String destinyMembershipId,
    List<int> groups,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['groups'] = groups;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Account/${destinyMembershipId}/Stats/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyHistoricalStatsAccountResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets activity history stats for indicated character.
  static Future<DestinyActivityHistoryResultsResponse> getActivityHistory(
    HttpClient client,
    String characterId,
    int count,
    String destinyMembershipId,
    int membershipType,
    int mode,
    int page,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    params['count'] = count;
    params['mode'] = mode;
    params['page'] = page;
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Account/${destinyMembershipId}/Character/${characterId}/Stats/Activities/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyActivityHistoryResultsResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets details about unique weapon usage, including all exotic weapons.
  static Future<DestinyHistoricalWeaponStatsDataResponse> getUniqueWeaponHistory(
    HttpClient client,
    String characterId,
    String destinyMembershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Account/${destinyMembershipId}/Character/${characterId}/Stats/UniqueWeapons/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyHistoricalWeaponStatsDataResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets all activities the character has participated in together with aggregate statistics for those activities.
  static Future<DestinyAggregateActivityResultsResponse> getDestinyAggregateActivityStats(
    HttpClient client,
    String characterId,
    String destinyMembershipId,
    int membershipType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/${membershipType}/Account/${destinyMembershipId}/Character/${characterId}/Stats/AggregateActivityStats/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyAggregateActivityResultsResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets custom localized content for the milestone of the given hash, if it exists.
  static Future<DestinyMilestoneContentResponse> getPublicMilestoneContent(
    HttpClient client,
    int milestoneHash,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Milestones/${milestoneHash}/Content/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DestinyMilestoneContentResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Gets public information about currently available Milestones.
  static Future<DictionaryOfuint32AndDestinyPublicMilestoneResponse> getPublicMilestones(
    HttpClient client,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Milestones/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return DictionaryOfuint32AndDestinyPublicMilestoneResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Initialize a request to perform an advanced write action.
  static Future<AwaInitializeResponseResponse> awaInitializeRequest(
    HttpClient client,
    AwaPermissionRequested body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Awa/Initialize/",
    );
    config.body = body.toJson();
    config.bodyContentType = 'application/json';
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return AwaInitializeResponseResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Provide the result of the user interaction. Called by the Bungie Destiny App to approve or reject a request.
  static Future<int32Response> awaProvideAuthorizationResult(
    HttpClient client,
    AwaUserResponse body,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'POST', 
      "/Destiny2/Awa/AwaProvideAuthorizationResult/",
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
  /// Returns the action token if user approves the request.
  static Future<AwaAuthorizationResultResponse> awaGetActionToken(
    HttpClient client,
    String correlationId,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Destiny2/Awa/GetActionToken/${correlationId}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return AwaAuthorizationResultResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
}
