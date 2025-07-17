// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlugComponent _$DestinyItemPlugComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemPlugComponent()
      ..plugObjectives =
          (json['plugObjectives'] as List<dynamic>?)
              ?.map(
                (e) => DestinyObjectiveProgress.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..plugItemHash = (json['plugItemHash'] as num?)?.toInt()
      ..canInsert = json['canInsert'] as bool?
      ..enabled = json['enabled'] as bool?
      ..insertFailIndexes =
          (json['insertFailIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..enableFailIndexes =
          (json['enableFailIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..stackSize = (json['stackSize'] as num?)?.toInt()
      ..maxStackSize = (json['maxStackSize'] as num?)?.toInt();

Map<String, dynamic> _$DestinyItemPlugComponentToJson(
  DestinyItemPlugComponent instance,
) => <String, dynamic>{
  'plugObjectives': instance.plugObjectives?.map((e) => e.toJson()).toList(),
  'plugItemHash': instance.plugItemHash,
  'canInsert': instance.canInsert,
  'enabled': instance.enabled,
  'insertFailIndexes': instance.insertFailIndexes,
  'enableFailIndexes': instance.enableFailIndexes,
  'stackSize': instance.stackSize,
  'maxStackSize': instance.maxStackSize,
};
