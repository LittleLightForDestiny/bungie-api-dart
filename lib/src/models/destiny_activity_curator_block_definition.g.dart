// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_curator_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityCuratorBlockDefinition
_$DestinyActivityCuratorBlockDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyActivityCuratorBlockDefinition()
      ..quickplaySortPriority = (json['quickplaySortPriority'] as num?)?.toInt()
      ..quickplaySortToFront = json['quickplaySortToFront'] as bool?;

Map<String, dynamic> _$DestinyActivityCuratorBlockDefinitionToJson(
  DestinyActivityCuratorBlockDefinition instance,
) => <String, dynamic>{
  'quickplaySortPriority': instance.quickplaySortPriority,
  'quickplaySortToFront': instance.quickplaySortToFront,
};
