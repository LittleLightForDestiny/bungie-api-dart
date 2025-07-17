// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_quest_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyQuestStatus _$DestinyQuestStatusFromJson(Map<String, dynamic> json) =>
    DestinyQuestStatus()
      ..questHash = (json['questHash'] as num?)?.toInt()
      ..stepHash = (json['stepHash'] as num?)?.toInt()
      ..stepObjectives =
          (json['stepObjectives'] as List<dynamic>?)
              ?.map(
                (e) => DestinyObjectiveProgress.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..tracked = json['tracked'] as bool?
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..completed = json['completed'] as bool?
      ..redeemed = json['redeemed'] as bool?
      ..started = json['started'] as bool?
      ..vendorHash = (json['vendorHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyQuestStatusToJson(
  DestinyQuestStatus instance,
) => <String, dynamic>{
  'questHash': instance.questHash,
  'stepHash': instance.stepHash,
  'stepObjectives': instance.stepObjectives?.map((e) => e.toJson()).toList(),
  'tracked': instance.tracked,
  'itemInstanceId': instance.itemInstanceId,
  'completed': instance.completed,
  'redeemed': instance.redeemed,
  'started': instance.started,
  'vendorHash': instance.vendorHash,
};
