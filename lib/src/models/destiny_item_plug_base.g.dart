// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlugBase _$DestinyItemPlugBaseFromJson(Map<String, dynamic> json) =>
    DestinyItemPlugBase()
      ..plugItemHash = json['plugItemHash'] as int?
      ..canInsert = json['canInsert'] as bool?
      ..enabled = json['enabled'] as bool?
      ..insertFailIndexes = (json['insertFailIndexes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..enableFailIndexes = (json['enableFailIndexes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList();

Map<String, dynamic> _$DestinyItemPlugBaseToJson(
        DestinyItemPlugBase instance) =>
    <String, dynamic>{
      'plugItemHash': instance.plugItemHash,
      'canInsert': instance.canInsert,
      'enabled': instance.enabled,
      'insertFailIndexes': instance.insertFailIndexes,
      'enableFailIndexes': instance.enableFailIndexes,
    };
