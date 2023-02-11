// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterResponse _$DestinyCharacterResponseFromJson(
        Map<String, dynamic> json) =>
    DestinyCharacterResponse()
      ..inventory = json['inventory'] == null
          ? null
          : SingleComponentResponseOfDestinyInventoryComponent.fromJson(
              json['inventory'] as Map<String, dynamic>)
      ..character = json['character'] == null
          ? null
          : SingleComponentResponseOfDestinyCharacterComponent.fromJson(
              json['character'] as Map<String, dynamic>)
      ..progressions = json['progressions'] == null
          ? null
          : SingleComponentResponseOfDestinyCharacterProgressionComponent
              .fromJson(json['progressions'] as Map<String, dynamic>)
      ..renderData = json['renderData'] == null
          ? null
          : SingleComponentResponseOfDestinyCharacterRenderComponent.fromJson(
              json['renderData'] as Map<String, dynamic>)
      ..activities = json['activities'] == null
          ? null
          : SingleComponentResponseOfDestinyCharacterActivitiesComponent
              .fromJson(json['activities'] as Map<String, dynamic>)
      ..equipment = json['equipment'] == null
          ? null
          : SingleComponentResponseOfDestinyInventoryComponent.fromJson(
              json['equipment'] as Map<String, dynamic>)
      ..kiosks = json['kiosks'] == null
          ? null
          : SingleComponentResponseOfDestinyKiosksComponent.fromJson(
              json['kiosks'] as Map<String, dynamic>)
      ..plugSets = json['plugSets'] == null
          ? null
          : SingleComponentResponseOfDestinyPlugSetsComponent.fromJson(
              json['plugSets'] as Map<String, dynamic>)
      ..presentationNodes = json['presentationNodes'] == null
          ? null
          : SingleComponentResponseOfDestinyPresentationNodesComponent.fromJson(
              json['presentationNodes'] as Map<String, dynamic>)
      ..records = json['records'] == null
          ? null
          : SingleComponentResponseOfDestinyCharacterRecordsComponent.fromJson(
              json['records'] as Map<String, dynamic>)
      ..collectibles = json['collectibles'] == null
          ? null
          : SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(
              json['collectibles'] as Map<String, dynamic>)
      ..itemComponents = json['itemComponents'] == null
          ? null
          : DestinyItemComponentSetOfint64.fromJson(
              json['itemComponents'] as Map<String, dynamic>)
      ..uninstancedItemComponents = json['uninstancedItemComponents'] == null
          ? null
          : DestinyBaseItemComponentSetOfuint32.fromJson(
              json['uninstancedItemComponents'] as Map<String, dynamic>)
      ..currencyLookups = json['currencyLookups'] == null
          ? null
          : SingleComponentResponseOfDestinyCurrenciesComponent.fromJson(
              json['currencyLookups'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyCharacterResponseToJson(
        DestinyCharacterResponse instance) =>
    <String, dynamic>{
      'inventory': instance.inventory?.toJson(),
      'character': instance.character?.toJson(),
      'progressions': instance.progressions?.toJson(),
      'renderData': instance.renderData?.toJson(),
      'activities': instance.activities?.toJson(),
      'equipment': instance.equipment?.toJson(),
      'kiosks': instance.kiosks?.toJson(),
      'plugSets': instance.plugSets?.toJson(),
      'presentationNodes': instance.presentationNodes?.toJson(),
      'records': instance.records?.toJson(),
      'collectibles': instance.collectibles?.toJson(),
      'itemComponents': instance.itemComponents?.toJson(),
      'uninstancedItemComponents': instance.uninstancedItemComponents?.toJson(),
      'currencyLookups': instance.currencyLookups?.toJson(),
    };
