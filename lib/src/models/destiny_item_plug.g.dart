// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlug _$DestinyItemPlugFromJson(Map<String, dynamic> json) {
  return DestinyItemPlug()
    ..plugItemHash = json['plugItemHash'] as int
    ..plugObjectives = (json['plugObjectives'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyObjectiveProgress.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..canInsert = json['canInsert'] as bool
    ..enabled = json['enabled'] as bool
    ..insertFailIndexes =
        (json['insertFailIndexes'] as List)?.map((e) => e as int)?.toList()
    ..enableFailIndexes =
        (json['enableFailIndexes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyItemPlugToJson(DestinyItemPlug instance) =>
    <String, dynamic>{
      'plugItemHash': instance.plugItemHash,
      'plugObjectives': instance.plugObjectives,
      'canInsert': instance.canInsert,
      'enabled': instance.enabled,
      'insertFailIndexes': instance.insertFailIndexes,
      'enableFailIndexes': instance.enableFailIndexes
    };
