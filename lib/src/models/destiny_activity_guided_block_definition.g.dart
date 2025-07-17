// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_guided_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGuidedBlockDefinition
_$DestinyActivityGuidedBlockDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyActivityGuidedBlockDefinition()
      ..guidedMaxLobbySize = (json['guidedMaxLobbySize'] as num?)?.toInt()
      ..guidedMinLobbySize = (json['guidedMinLobbySize'] as num?)?.toInt()
      ..guidedDisbandCount = (json['guidedDisbandCount'] as num?)?.toInt();

Map<String, dynamic> _$DestinyActivityGuidedBlockDefinitionToJson(
  DestinyActivityGuidedBlockDefinition instance,
) => <String, dynamic>{
  'guidedMaxLobbySize': instance.guidedMaxLobbySize,
  'guidedMinLobbySize': instance.guidedMinLobbySize,
  'guidedDisbandCount': instance.guidedDisbandCount,
};
