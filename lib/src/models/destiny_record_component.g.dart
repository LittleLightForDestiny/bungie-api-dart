// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordComponent _$DestinyRecordComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyRecordComponent()
      ..state =
          json['state'] == null
              ? null
              : DestinyRecordState.fromJson((json['state'] as num).toInt())
      ..objectives =
          (json['objectives'] as List<dynamic>?)
              ?.map(
                (e) => DestinyObjectiveProgress.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..intervalObjectives =
          (json['intervalObjectives'] as List<dynamic>?)
              ?.map(
                (e) => DestinyObjectiveProgress.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..intervalsRedeemedCount =
          (json['intervalsRedeemedCount'] as num?)?.toInt()
      ..completedCount = (json['completedCount'] as num?)?.toInt()
      ..rewardVisibilty =
          (json['rewardVisibilty'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList();

Map<String, dynamic> _$DestinyRecordComponentToJson(
  DestinyRecordComponent instance,
) => <String, dynamic>{
  'state': instance.state?.toJson(),
  'objectives': instance.objectives?.map((e) => e.toJson()).toList(),
  'intervalObjectives':
      instance.intervalObjectives?.map((e) => e.toJson()).toList(),
  'intervalsRedeemedCount': instance.intervalsRedeemedCount,
  'completedCount': instance.completedCount,
  'rewardVisibilty': instance.rewardVisibilty,
};
