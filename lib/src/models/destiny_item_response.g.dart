// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemResponse _$DestinyItemResponseFromJson(Map<String, dynamic> json) =>
    DestinyItemResponse()
      ..characterId = json['characterId'] as String?
      ..item =
          json['item'] == null
              ? null
              : SingleComponentResponseOfDestinyItemComponent.fromJson(
                json['item'] as Map<String, dynamic>,
              )
      ..instance =
          json['instance'] == null
              ? null
              : SingleComponentResponseOfDestinyItemInstanceComponent.fromJson(
                json['instance'] as Map<String, dynamic>,
              )
      ..objectives =
          json['objectives'] == null
              ? null
              : SingleComponentResponseOfDestinyItemObjectivesComponent.fromJson(
                json['objectives'] as Map<String, dynamic>,
              )
      ..perks =
          json['perks'] == null
              ? null
              : SingleComponentResponseOfDestinyItemPerksComponent.fromJson(
                json['perks'] as Map<String, dynamic>,
              )
      ..renderData =
          json['renderData'] == null
              ? null
              : SingleComponentResponseOfDestinyItemRenderComponent.fromJson(
                json['renderData'] as Map<String, dynamic>,
              )
      ..stats =
          json['stats'] == null
              ? null
              : SingleComponentResponseOfDestinyItemStatsComponent.fromJson(
                json['stats'] as Map<String, dynamic>,
              )
      ..talentGrid =
          json['talentGrid'] == null
              ? null
              : SingleComponentResponseOfDestinyItemTalentGridComponent.fromJson(
                json['talentGrid'] as Map<String, dynamic>,
              )
      ..sockets =
          json['sockets'] == null
              ? null
              : SingleComponentResponseOfDestinyItemSocketsComponent.fromJson(
                json['sockets'] as Map<String, dynamic>,
              )
      ..reusablePlugs =
          json['reusablePlugs'] == null
              ? null
              : SingleComponentResponseOfDestinyItemReusablePlugsComponent.fromJson(
                json['reusablePlugs'] as Map<String, dynamic>,
              )
      ..plugObjectives =
          json['plugObjectives'] == null
              ? null
              : SingleComponentResponseOfDestinyItemPlugObjectivesComponent.fromJson(
                json['plugObjectives'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyItemResponseToJson(
  DestinyItemResponse instance,
) => <String, dynamic>{
  'characterId': instance.characterId,
  'item': instance.item?.toJson(),
  'instance': instance.instance?.toJson(),
  'objectives': instance.objectives?.toJson(),
  'perks': instance.perks?.toJson(),
  'renderData': instance.renderData?.toJson(),
  'stats': instance.stats?.toJson(),
  'talentGrid': instance.talentGrid?.toJson(),
  'sockets': instance.sockets?.toJson(),
  'reusablePlugs': instance.reusablePlugs?.toJson(),
  'plugObjectives': instance.plugObjectives?.toJson(),
};
