// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_component_set_ofint32.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemComponentSetOfint32 _$DestinyItemComponentSetOfint32FromJson(
        Map<String, dynamic> json) =>
    DestinyItemComponentSetOfint32()
      ..instances = json['instances'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent
              .fromJson(json['instances'] as Map<String, dynamic>)
      ..renderData = json['renderData'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemRenderComponent
              .fromJson(json['renderData'] as Map<String, dynamic>)
      ..stats = json['stats'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemStatsComponent
              .fromJson(json['stats'] as Map<String, dynamic>)
      ..sockets = json['sockets'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent
              .fromJson(json['sockets'] as Map<String, dynamic>)
      ..reusablePlugs = json['reusablePlugs'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent
              .fromJson(json['reusablePlugs'] as Map<String, dynamic>)
      ..plugObjectives = json['plugObjectives'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent
              .fromJson(json['plugObjectives'] as Map<String, dynamic>)
      ..talentGrids = json['talentGrids'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent
              .fromJson(json['talentGrids'] as Map<String, dynamic>)
      ..plugStates = json['plugStates'] == null
          ? null
          : DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent
              .fromJson(json['plugStates'] as Map<String, dynamic>)
      ..objectives = json['objectives'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent
              .fromJson(json['objectives'] as Map<String, dynamic>)
      ..perks = json['perks'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyItemPerksComponent
              .fromJson(json['perks'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyItemComponentSetOfint32ToJson(
        DestinyItemComponentSetOfint32 instance) =>
    <String, dynamic>{
      'instances': instance.instances,
      'renderData': instance.renderData,
      'stats': instance.stats,
      'sockets': instance.sockets,
      'reusablePlugs': instance.reusablePlugs,
      'plugObjectives': instance.plugObjectives,
      'talentGrids': instance.talentGrids,
      'plugStates': instance.plugStates,
      'objectives': instance.objectives,
      'perks': instance.perks,
    };
