// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_item_component_set_ofint32.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorItemComponentSetOfint32
_$DestinyVendorItemComponentSetOfint32FromJson(Map<String, dynamic> json) =>
    DestinyVendorItemComponentSetOfint32()
      ..itemComponents =
          json['itemComponents'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemComponent.fromJson(
                json['itemComponents'] as Map<String, dynamic>,
              )
      ..instances =
          json['instances'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent.fromJson(
                json['instances'] as Map<String, dynamic>,
              )
      ..renderData =
          json['renderData'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemRenderComponent.fromJson(
                json['renderData'] as Map<String, dynamic>,
              )
      ..stats =
          json['stats'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemStatsComponent.fromJson(
                json['stats'] as Map<String, dynamic>,
              )
      ..sockets =
          json['sockets'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent.fromJson(
                json['sockets'] as Map<String, dynamic>,
              )
      ..reusablePlugs =
          json['reusablePlugs'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent.fromJson(
                json['reusablePlugs'] as Map<String, dynamic>,
              )
      ..plugObjectives =
          json['plugObjectives'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent.fromJson(
                json['plugObjectives'] as Map<String, dynamic>,
              )
      ..talentGrids =
          json['talentGrids'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent.fromJson(
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
              : DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent.fromJson(
                json['objectives'] as Map<String, dynamic>,
              )
      ..perks =
          json['perks'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromJson(
                json['perks'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyVendorItemComponentSetOfint32ToJson(
  DestinyVendorItemComponentSetOfint32 instance,
) => <String, dynamic>{
  'itemComponents': instance.itemComponents?.toJson(),
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
