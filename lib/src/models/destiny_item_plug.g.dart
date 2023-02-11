// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlug _$DestinyItemPlugFromJson(Map<String, dynamic> json) =>
    DestinyItemPlug()
      ..plugObjectives = (json['plugObjectives'] as List<dynamic>?)
          ?.map((e) =>
              DestinyObjectiveProgress.fromJson(e as Map<String, dynamic>))
          .toList()
      ..plugItemHash = json['plugItemHash'] as int?
      ..canInsert = json['canInsert'] as bool?
      ..enabled = json['enabled'] as bool?
      ..insertFailIndexes = (json['insertFailIndexes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..enableFailIndexes = (json['enableFailIndexes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList();

Map<String, dynamic> _$DestinyItemPlugToJson(DestinyItemPlug instance) =>
    <String, dynamic>{
      'plugObjectives':
          instance.plugObjectives?.map((e) => e.toJson()).toList(),
      'plugItemHash': instance.plugItemHash,
      'canInsert': instance.canInsert,
      'enabled': instance.enabled,
      'insertFailIndexes': instance.insertFailIndexes,
      'enableFailIndexes': instance.enableFailIndexes,
    };
