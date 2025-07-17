// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlugObjectivesComponent _$DestinyItemPlugObjectivesComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemPlugObjectivesComponent()
      ..objectivesPerPlug = (json['objectivesPerPlug'] as Map<String, dynamic>?)
          ?.map(
            (k, e) => MapEntry(
              k,
              (e as List<dynamic>)
                  .map(
                    (e) => DestinyObjectiveProgress.fromJson(
                      e as Map<String, dynamic>,
                    ),
                  )
                  .toList(),
            ),
          );

Map<String, dynamic> _$DestinyItemPlugObjectivesComponentToJson(
  DestinyItemPlugObjectivesComponent instance,
) => <String, dynamic>{
  'objectivesPerPlug': instance.objectivesPerPlug?.map(
    (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
  ),
};
