// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlugObjectivesComponent _$DestinyItemPlugObjectivesComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyItemPlugObjectivesComponent()
    ..objectivesPerPlug =
        (json['objectivesPerPlug'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          (e as List)
              ?.map((e) => e == null
                  ? null
                  : DestinyObjectiveProgress.fromJson(
                      e as Map<String, dynamic>))
              ?.toList()),
    );
}

Map<String, dynamic> _$DestinyItemPlugObjectivesComponentToJson(
        DestinyItemPlugObjectivesComponent instance) =>
    <String, dynamic>{
      'objectivesPerPlug': instance.objectivesPerPlug,
    };
