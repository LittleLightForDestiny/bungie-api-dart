// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_connection_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphConnectionDefinition
    _$DestinyActivityGraphConnectionDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyActivityGraphConnectionDefinition()
          ..sourceNodeHash = (json['sourceNodeHash'] as num?)?.toInt()
          ..destNodeHash = (json['destNodeHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyActivityGraphConnectionDefinitionToJson(
        DestinyActivityGraphConnectionDefinition instance) =>
    <String, dynamic>{
      'sourceNodeHash': instance.sourceNodeHash,
      'destNodeHash': instance.destNodeHash,
    };
