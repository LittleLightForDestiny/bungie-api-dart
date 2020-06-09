// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileResponse _$DestinyProfileResponseFromJson(
    Map<String, dynamic> json) {
  return DestinyProfileResponse()
    ..vendorReceipts = json['vendorReceipts'] == null
        ? null
        : SingleComponentResponseOfDestinyVendorReceiptsComponent.fromJson(
            json['vendorReceipts'] as Map<String, dynamic>)
    ..profileInventory = json['profileInventory'] == null
        ? null
        : SingleComponentResponseOfDestinyInventoryComponent.fromJson(
            json['profileInventory'] as Map<String, dynamic>)
    ..profileCurrencies = json['profileCurrencies'] == null
        ? null
        : SingleComponentResponseOfDestinyInventoryComponent.fromJson(
            json['profileCurrencies'] as Map<String, dynamic>)
    ..profile = json['profile'] == null
        ? null
        : SingleComponentResponseOfDestinyProfileComponent.fromJson(
            json['profile'] as Map<String, dynamic>)
    ..platformSilver = json['platformSilver'] == null
        ? null
        : SingleComponentResponseOfDestinyPlatformSilverComponent.fromJson(
            json['platformSilver'] as Map<String, dynamic>)
    ..profileKiosks = json['profileKiosks'] == null
        ? null
        : SingleComponentResponseOfDestinyKiosksComponent.fromJson(
            json['profileKiosks'] as Map<String, dynamic>)
    ..profilePlugSets =
        json['profilePlugSets'] == null ? null : SingleComponentResponseOfDestinyPlugSetsComponent.fromJson(json['profilePlugSets'] as Map<String, dynamic>)
    ..profileProgression = json['profileProgression'] == null ? null : SingleComponentResponseOfDestinyProfileProgressionComponent.fromJson(json['profileProgression'] as Map<String, dynamic>)
    ..profilePresentationNodes = json['profilePresentationNodes'] == null ? null : SingleComponentResponseOfDestinyPresentationNodesComponent.fromJson(json['profilePresentationNodes'] as Map<String, dynamic>)
    ..profileRecords = json['profileRecords'] == null ? null : SingleComponentResponseOfDestinyProfileRecordsComponent.fromJson(json['profileRecords'] as Map<String, dynamic>)
    ..profileCollectibles = json['profileCollectibles'] == null ? null : SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromJson(json['profileCollectibles'] as Map<String, dynamic>)
    ..profileTransitoryData = json['profileTransitoryData'] == null ? null : SingleComponentResponseOfDestinyProfileTransitoryComponent.fromJson(json['profileTransitoryData'] as Map<String, dynamic>)
    ..metrics = json['metrics'] == null ? null : SingleComponentResponseOfDestinyMetricsComponent.fromJson(json['metrics'] as Map<String, dynamic>)
    ..characters = json['characters'] == null ? null : DictionaryComponentResponseOfint64AndDestinyCharacterComponent.fromJson(json['characters'] as Map<String, dynamic>)
    ..characterInventories = json['characterInventories'] == null ? null : DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromJson(json['characterInventories'] as Map<String, dynamic>)
    ..characterProgressions = json['characterProgressions'] == null ? null : DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent.fromJson(json['characterProgressions'] as Map<String, dynamic>)
    ..characterRenderData = json['characterRenderData'] == null ? null : DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent.fromJson(json['characterRenderData'] as Map<String, dynamic>)
    ..characterActivities = json['characterActivities'] == null ? null : DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent.fromJson(json['characterActivities'] as Map<String, dynamic>)
    ..characterEquipment = json['characterEquipment'] == null ? null : DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromJson(json['characterEquipment'] as Map<String, dynamic>)
    ..characterKiosks = json['characterKiosks'] == null ? null : DictionaryComponentResponseOfint64AndDestinyKiosksComponent.fromJson(json['characterKiosks'] as Map<String, dynamic>)
    ..characterPlugSets = json['characterPlugSets'] == null ? null : DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromJson(json['characterPlugSets'] as Map<String, dynamic>)
    ..characterUninstancedItemComponents = (json['characterUninstancedItemComponents'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyBaseItemComponentSetOfuint32.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..characterPresentationNodes = json['characterPresentationNodes'] == null ? null : DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent.fromJson(json['characterPresentationNodes'] as Map<String, dynamic>)
    ..characterRecords = json['characterRecords'] == null ? null : DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent.fromJson(json['characterRecords'] as Map<String, dynamic>)
    ..characterCollectibles = json['characterCollectibles'] == null ? null : DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromJson(json['characterCollectibles'] as Map<String, dynamic>)
    ..itemComponents = json['itemComponents'] == null ? null : DestinyItemComponentSetOfint64.fromJson(json['itemComponents'] as Map<String, dynamic>)
    ..characterCurrencyLookups = json['characterCurrencyLookups'] == null ? null : DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent.fromJson(json['characterCurrencyLookups'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyProfileResponseToJson(
        DestinyProfileResponse instance) =>
    <String, dynamic>{
      'vendorReceipts': instance.vendorReceipts,
      'profileInventory': instance.profileInventory,
      'profileCurrencies': instance.profileCurrencies,
      'profile': instance.profile,
      'platformSilver': instance.platformSilver,
      'profileKiosks': instance.profileKiosks,
      'profilePlugSets': instance.profilePlugSets,
      'profileProgression': instance.profileProgression,
      'profilePresentationNodes': instance.profilePresentationNodes,
      'profileRecords': instance.profileRecords,
      'profileCollectibles': instance.profileCollectibles,
      'profileTransitoryData': instance.profileTransitoryData,
      'metrics': instance.metrics,
      'characters': instance.characters,
      'characterInventories': instance.characterInventories,
      'characterProgressions': instance.characterProgressions,
      'characterRenderData': instance.characterRenderData,
      'characterActivities': instance.characterActivities,
      'characterEquipment': instance.characterEquipment,
      'characterKiosks': instance.characterKiosks,
      'characterPlugSets': instance.characterPlugSets,
      'characterUninstancedItemComponents':
          instance.characterUninstancedItemComponents,
      'characterPresentationNodes': instance.characterPresentationNodes,
      'characterRecords': instance.characterRecords,
      'characterCollectibles': instance.characterCollectibles,
      'itemComponents': instance.itemComponents,
      'characterCurrencyLookups': instance.characterCurrencyLookups,
    };
