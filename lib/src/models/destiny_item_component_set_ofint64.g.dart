// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_component_set_ofint64.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemComponentSetOfint64 _$DestinyItemComponentSetOfint64FromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemComponentSetOfint64()
      ..instances =
          json['instances'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent.fromJson(
                json['instances'] as Map<String, dynamic>,
              )
      ..renderData =
          json['renderData'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemRenderComponent.fromJson(
                json['renderData'] as Map<String, dynamic>,
              )
      ..stats =
          json['stats'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemStatsComponent.fromJson(
                json['stats'] as Map<String, dynamic>,
              )
      ..sockets =
          json['sockets'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromJson(
                json['sockets'] as Map<String, dynamic>,
              )
      ..reusablePlugs =
          json['reusablePlugs'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent.fromJson(
                json['reusablePlugs'] as Map<String, dynamic>,
              )
      ..plugObjectives =
          json['plugObjectives'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent.fromJson(
                json['plugObjectives'] as Map<String, dynamic>,
              )
      ..talentGrids =
          json['talentGrids'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent.fromJson(
                json['talentGrids'] as Map<String, dynamic>,
              )
      ..plugStates =
          json['plugStates'] == null
              ? null
              : DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(
                json['plugStates'] as Map<String, dynamic>,
              )
      ..objectives =
          json['objectives'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromJson(
                json['objectives'] as Map<String, dynamic>,
              )
      ..perks =
          json['perks'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromJson(
                json['perks'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyItemComponentSetOfint64ToJson(
  DestinyItemComponentSetOfint64 instance,
) => <String, dynamic>{
  'instances': instance.instances?.toJson(),
  'renderData': instance.renderData?.toJson(),
  'stats': instance.stats?.toJson(),
  'sockets': instance.sockets?.toJson(),
  'reusablePlugs': instance.reusablePlugs?.toJson(),
  'plugObjectives': instance.plugObjectives?.toJson(),
  'talentGrids': instance.talentGrids?.toJson(),
  'plugStates': instance.plugStates?.toJson(),
  'objectives': instance.objectives?.toJson(),
  'perks': instance.perks?.toJson(),
};
