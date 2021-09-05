// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_quest_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyQuestStatus _$DestinyQuestStatusFromJson(Map<String, dynamic> json) {
  return DestinyQuestStatus()
    ..questHash = json['questHash'] as int?
    ..stepHash = json['stepHash'] as int?
    ..stepObjectives = (json['stepObjectives'] as List<dynamic>?)
        ?.map(
            (e) => DestinyObjectiveProgress.fromJson(e as Map<String, dynamic>))
        .toList()
    ..tracked = json['tracked'] as bool?
    ..itemInstanceId = json['itemInstanceId'] as String?
    ..completed = json['completed'] as bool?
    ..redeemed = json['redeemed'] as bool?
    ..started = json['started'] as bool?
    ..vendorHash = json['vendorHash'] as int?;
}

Map<String, dynamic> _$DestinyQuestStatusToJson(DestinyQuestStatus instance) =>
    <String, dynamic>{
      'questHash': instance.questHash,
      'stepHash': instance.stepHash,
      'stepObjectives': instance.stepObjectives,
      'tracked': instance.tracked,
      'itemInstanceId': instance.itemInstanceId,
      'completed': instance.completed,
      'redeemed': instance.redeemed,
      'started': instance.started,
      'vendorHash': instance.vendorHash,
    };
