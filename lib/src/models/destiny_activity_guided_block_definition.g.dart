// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_guided_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGuidedBlockDefinition
    _$DestinyActivityGuidedBlockDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyActivityGuidedBlockDefinition()
    ..guidedMaxLobbySize = json['guidedMaxLobbySize'] as int
    ..guidedMinLobbySize = json['guidedMinLobbySize'] as int
    ..guidedDisbandCount = json['guidedDisbandCount'] as int;
}

Map<String, dynamic> _$DestinyActivityGuidedBlockDefinitionToJson(
        DestinyActivityGuidedBlockDefinition instance) =>
    <String, dynamic>{
      'guidedMaxLobbySize': instance.guidedMaxLobbySize,
      'guidedMinLobbySize': instance.guidedMinLobbySize,
      'guidedDisbandCount': instance.guidedDisbandCount,
    };
