// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemObjectivesComponent _$DestinyItemObjectivesComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyItemObjectivesComponent()
    ..objectives = (json['objectives'] as List<dynamic>?)
        ?.map(
            (e) => DestinyObjectiveProgress.fromJson(e as Map<String, dynamic>))
        .toList()
    ..flavorObjective = json['flavorObjective'] == null
        ? null
        : DestinyObjectiveProgress.fromJson(
            json['flavorObjective'] as Map<String, dynamic>)
    ..dateCompleted = json['dateCompleted'] as String?;
}

Map<String, dynamic> _$DestinyItemObjectivesComponentToJson(
        DestinyItemObjectivesComponent instance) =>
    <String, dynamic>{
      'objectives': instance.objectives,
      'flavorObjective': instance.flavorObjective,
      'dateCompleted': instance.dateCompleted,
    };
