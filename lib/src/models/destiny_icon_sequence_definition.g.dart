// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_icon_sequence_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyIconSequenceDefinition _$DestinyIconSequenceDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyIconSequenceDefinition()
      ..frames =
          (json['frames'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$DestinyIconSequenceDefinitionToJson(
        DestinyIconSequenceDefinition instance) =>
    <String, dynamic>{
      'frames': instance.frames,
    };
