import 'package:json_annotation/json_annotation.dart';

enum DestinyComponentType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Profiles = 100
  /// Profiles is the most basic component, only relevant when calling GetProfile. This returns basic information about the profile, which is almost nothing: a list of characterIds, some information about the last time you logged in, and that most sobering statistic: how long you&#39;ve played.
  @JsonValue(100)
  Profiles,
  ///VendorReceipts = 101
  /// Only applicable for GetProfile, this will return information about receipts for refundable vendor items.
  @JsonValue(101)
  VendorReceipts,
  ///ProfileInventories = 102
  /// Asking for this will get you the profile-level inventories, such as your Vault buckets (yeah, the Vault is really inventory buckets located on your Profile)
  @JsonValue(102)
  ProfileInventories,
  ///ProfileCurrencies = 103
  /// This will get you a summary of items on your Profile that we consider to be &quot;currencies&quot;, such as Glimmer. I mean, if there&#39;s Glimmer in Destiny 2. I didn&#39;t say there was Glimmer.
  @JsonValue(103)
  ProfileCurrencies,
  ///ProfileProgression = 104
  /// This will get you any progression-related information that exists on a Profile-wide level, across all characters.
  @JsonValue(104)
  ProfileProgression,
  ///PlatformSilver = 105
  /// This will get you information about the silver that this profile has on every platform on which it plays.
  ///  You may only request this component for the logged in user&#39;s Profile, and will not recieve it if you request it for another Profile.
  @JsonValue(105)
  PlatformSilver,
  ///Characters = 200
  /// This will get you summary info about each of the characters in the profile.
  @JsonValue(200)
  Characters,
  ///CharacterInventories = 201
  /// This will get you information about any non-equipped items on the character or character(s) in question, if you&#39;re allowed to see it. You have to either be authenticated as that user, or that user must allow anonymous viewing of their non-equipped items in Bungie.Net settings to actually get results.
  @JsonValue(201)
  CharacterInventories,
  ///CharacterProgressions = 202
  /// This will get you information about the progression (faction, experience, etc... &quot;levels&quot;) relevant to each character, if you are the currently authenticated user or the user has elected to allow anonymous viewing of its progression info.
  @JsonValue(202)
  CharacterProgressions,
  ///CharacterRenderData = 203
  /// This will get you just enough information to be able to render the character in 3D if you have written a 3D rendering library for Destiny Characters, or &quot;borrowed&quot; ours. It&#39;s okay, I won&#39;t tell anyone if you&#39;re using it. I&#39;m no snitch. (actually, we don&#39;t care if you use it - go to town)
  @JsonValue(203)
  CharacterRenderData,
  ///CharacterActivities = 204
  /// This will return info about activities that a user can see and gating on it, if you are the currently authenticated user or the user has elected to allow anonymous viewing of its progression info. Note that the data returned by this can be unfortunately problematic and relatively unreliable in some cases. We&#39;ll eventually work on making it more consistently reliable.
  @JsonValue(204)
  CharacterActivities,
  ///CharacterEquipment = 205
  /// This will return info about the equipped items on the character(s). Everyone can see this.
  @JsonValue(205)
  CharacterEquipment,
  ///ItemInstances = 300
  /// This will return basic info about instanced items - whether they can be equipped, their tracked status, and some info commonly needed in many places (current damage type, primary stat value, etc)
  @JsonValue(300)
  ItemInstances,
  ///ItemObjectives = 301
  /// Items can have Objectives (DestinyObjectiveDefinition) bound to them. If they do, this will return info for items that have such bound objectives.
  @JsonValue(301)
  ItemObjectives,
  ///ItemPerks = 302
  /// Items can have perks (DestinyPerkDefinition). If they do, this will return info for what perks are active on items.
  @JsonValue(302)
  ItemPerks,
  ///ItemRenderData = 303
  /// If you just want to render the weapon, this is just enough info to do that rendering.
  @JsonValue(303)
  ItemRenderData,
  ///ItemStats = 304
  /// Items can have stats, like rate of fire. Asking for this component will return requested item&#39;s stats if they have stats.
  @JsonValue(304)
  ItemStats,
  ///ItemSockets = 305
  /// Items can have sockets, where plugs can be inserted. Asking for this component will return all info relevant to the sockets on items that have them.
  @JsonValue(305)
  ItemSockets,
  ///ItemTalentGrids = 306
  /// Items can have talent grids, though that matters a lot less frequently than it used to. Asking for this component will return all relevant info about activated Nodes and Steps on this talent grid, like the good ol&#39; days.
  @JsonValue(306)
  ItemTalentGrids,
  ///ItemCommonData = 307
  /// Items that *aren&#39;t* instanced still have important information you need to know: how much of it you have, the itemHash so you can look up their DestinyInventoryItemDefinition, whether they&#39;re locked, etc... Both instanced and non-instanced items will have these properties. You will get this automatically with Inventory components - you only need to pass this when calling GetItem on a specific item.
  @JsonValue(307)
  ItemCommonData,
  ///ItemPlugStates = 308
  /// Items that are &quot;Plugs&quot; can be inserted into sockets. This returns statuses about those plugs and why they can&#x2F;can&#39;t be inserted. I hear you giggling, there&#39;s nothing funny about inserting plugs. Get your head out of the gutter and pay attention!
  @JsonValue(308)
  ItemPlugStates,
  ///ItemPlugObjectives = 309
  /// Sometimes, plugs have objectives on them. This data can get really large, so we split it into its own component. Please, don&#39;t grab it unless you need it.
  @JsonValue(309)
  ItemPlugObjectives,
  ///ItemReusablePlugs = 310
  /// Sometimes, designers create thousands of reusable plugs and suddenly your response sizes are almost 3MB, and something has to give.
  ///  Reusable Plugs were split off as their own component, away from ItemSockets, as a result of the Plug changes in Shadowkeep that made plug data infeasibly large for the most common use cases.
  ///  Request this component if and only if you need to know what plugs *could* be inserted into a socket, and need to know it before &quot;drilling&quot; into the details of an item in your application (for instance, if you&#39;re doing some sort of interesting sorting or aggregation based on available plugs.
  ///  When you get this, you will also need to combine it with &quot;Plug Sets&quot; data if you want a full picture of all of the available plugs: this component will only return plugs that have state data that is per-item. See Plug Sets for available plugs that have Character, Profile, or no state-specific restrictions.
  @JsonValue(310)
  ItemReusablePlugs,
  ///Vendors = 400
  /// When obtaining vendor information, this will return summary information about the Vendor or Vendors being returned.
  @JsonValue(400)
  Vendors,
  ///VendorCategories = 401
  /// When obtaining vendor information, this will return information about the categories of items provided by the Vendor.
  @JsonValue(401)
  VendorCategories,
  ///VendorSales = 402
  /// When obtaining vendor information, this will return the information about items being sold by the Vendor.
  @JsonValue(402)
  VendorSales,
  ///Kiosks = 500
  /// Asking for this component will return you the account&#39;s Kiosk statuses: that is, what items have been filled out&#x2F;acquired. But only if you are the currently authenticated user or the user has elected to allow anonymous viewing of its progression info.
  @JsonValue(500)
  Kiosks,
  ///CurrencyLookups = 600
  /// A &quot;shortcut&quot; component that will give you all of the item hashes&#x2F;quantities of items that the requested character can use to determine if an action (purchasing, socket insertion) has the required currency. (recall that all currencies are just items, and that some vendor purchases require items that you might not traditionally consider to be a &quot;currency&quot;, like plugs&#x2F;mods!)
  @JsonValue(600)
  CurrencyLookups,
  ///PresentationNodes = 700
  /// Returns summary status information about all &quot;Presentation Nodes&quot;. See DestinyPresentationNodeDefinition for more details, but the gist is that these are entities used by the game UI to bucket Collectibles and Records into a hierarchy of categories. You may ask for and use this data if you want to perform similar bucketing in your own UI: or you can skip it and roll your own.
  @JsonValue(700)
  PresentationNodes,
  ///Collectibles = 800
  /// Returns summary status information about all &quot;Collectibles&quot;. These are records of what items you&#39;ve discovered while playing Destiny, and some other basic information. For detailed information, you will have to call a separate endpoint devoted to the purpose.
  @JsonValue(800)
  Collectibles,
  ///Records = 900
  /// Returns summary status information about all &quot;Records&quot; (also known in the game as &quot;Triumphs&quot;. I know, it&#39;s confusing because there&#39;s also &quot;Moments of Triumph&quot; that will themselves be represented as &quot;Triumphs.&quot;)
  @JsonValue(900)
  Records,
  ///Transitory = 1000
  /// Returns information that Bungie considers to be &quot;Transitory&quot;: data that may change too frequently or come from a non-authoritative source such that we don&#39;t consider the data to be fully trustworthy, but that might prove useful for some limited use cases. We can provide no guarantee of timeliness nor consistency for this data: buyer beware with the Transitory component.
  @JsonValue(1000)
  Transitory,
  ///Metrics = 1100
  /// Returns summary status information about all &quot;Metrics&quot; (also known in the game as &quot;Stat Trackers&quot;).
  @JsonValue(1100)
  Metrics,
  ///StringVariables = 1200
  /// Returns a mapping of localized string variable hashes to values, on a per-account or per-character basis.
  @JsonValue(1200)
  StringVariables,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyComponentTypeExtension on DestinyComponentType{
  int? get value {
    if (_$DestinyComponentTypeEnumMap.containsKey(this)){
      return _$DestinyComponentTypeEnumMap[this];
    }
    return null;
  }
}

DestinyComponentType? decodeDestinyComponentType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyComponentTypeValueMap.containsKey(value)){
    return _$DestinyComponentTypeValueMap[value];
  }

  return DestinyComponentType.ProtectedInvalidEnumValue;
}

int? encodeDestinyComponentType (DestinyComponentType? value) {
  return value?.value;
}

const Map<DestinyComponentType, int> _$DestinyComponentTypeEnumMap = <DestinyComponentType, int>{
    DestinyComponentType.None:0,
    DestinyComponentType.Profiles:100,
    DestinyComponentType.VendorReceipts:101,
    DestinyComponentType.ProfileInventories:102,
    DestinyComponentType.ProfileCurrencies:103,
    DestinyComponentType.ProfileProgression:104,
    DestinyComponentType.PlatformSilver:105,
    DestinyComponentType.Characters:200,
    DestinyComponentType.CharacterInventories:201,
    DestinyComponentType.CharacterProgressions:202,
    DestinyComponentType.CharacterRenderData:203,
    DestinyComponentType.CharacterActivities:204,
    DestinyComponentType.CharacterEquipment:205,
    DestinyComponentType.ItemInstances:300,
    DestinyComponentType.ItemObjectives:301,
    DestinyComponentType.ItemPerks:302,
    DestinyComponentType.ItemRenderData:303,
    DestinyComponentType.ItemStats:304,
    DestinyComponentType.ItemSockets:305,
    DestinyComponentType.ItemTalentGrids:306,
    DestinyComponentType.ItemCommonData:307,
    DestinyComponentType.ItemPlugStates:308,
    DestinyComponentType.ItemPlugObjectives:309,
    DestinyComponentType.ItemReusablePlugs:310,
    DestinyComponentType.Vendors:400,
    DestinyComponentType.VendorCategories:401,
    DestinyComponentType.VendorSales:402,
    DestinyComponentType.Kiosks:500,
    DestinyComponentType.CurrencyLookups:600,
    DestinyComponentType.PresentationNodes:700,
    DestinyComponentType.Collectibles:800,
    DestinyComponentType.Records:900,
    DestinyComponentType.Transitory:1000,
    DestinyComponentType.Metrics:1100,
    DestinyComponentType.StringVariables:1200,
};
const Map<int, DestinyComponentType> _$DestinyComponentTypeValueMap = <int, DestinyComponentType>{
    0:DestinyComponentType.None,
    100:DestinyComponentType.Profiles,
    101:DestinyComponentType.VendorReceipts,
    102:DestinyComponentType.ProfileInventories,
    103:DestinyComponentType.ProfileCurrencies,
    104:DestinyComponentType.ProfileProgression,
    105:DestinyComponentType.PlatformSilver,
    200:DestinyComponentType.Characters,
    201:DestinyComponentType.CharacterInventories,
    202:DestinyComponentType.CharacterProgressions,
    203:DestinyComponentType.CharacterRenderData,
    204:DestinyComponentType.CharacterActivities,
    205:DestinyComponentType.CharacterEquipment,
    300:DestinyComponentType.ItemInstances,
    301:DestinyComponentType.ItemObjectives,
    302:DestinyComponentType.ItemPerks,
    303:DestinyComponentType.ItemRenderData,
    304:DestinyComponentType.ItemStats,
    305:DestinyComponentType.ItemSockets,
    306:DestinyComponentType.ItemTalentGrids,
    307:DestinyComponentType.ItemCommonData,
    308:DestinyComponentType.ItemPlugStates,
    309:DestinyComponentType.ItemPlugObjectives,
    310:DestinyComponentType.ItemReusablePlugs,
    400:DestinyComponentType.Vendors,
    401:DestinyComponentType.VendorCategories,
    402:DestinyComponentType.VendorSales,
    500:DestinyComponentType.Kiosks,
    600:DestinyComponentType.CurrencyLookups,
    700:DestinyComponentType.PresentationNodes,
    800:DestinyComponentType.Collectibles,
    900:DestinyComponentType.Records,
    1000:DestinyComponentType.Transitory,
    1100:DestinyComponentType.Metrics,
    1200:DestinyComponentType.StringVariables,
};