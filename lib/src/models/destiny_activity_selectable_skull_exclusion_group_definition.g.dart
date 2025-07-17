// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_selectable_skull_exclusion_group_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySelectableSkullExclusionGroupDefinition
_$DestinyActivitySelectableSkullExclusionGroupDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivitySelectableSkullExclusionGroupDefinition()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic>
_$DestinyActivitySelectableSkullExclusionGroupDefinitionToJson(
  DestinyActivitySelectableSkullExclusionGroupDefinition instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
