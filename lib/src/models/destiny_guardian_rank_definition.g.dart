// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_guardian_rank_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyGuardianRankDefinition _$DestinyGuardianRankDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyGuardianRankDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..rankNumber = json['rankNumber'] as int?
      ..presentationNodeHash = json['presentationNodeHash'] as int?
      ..foregroundImagePath = json['foregroundImagePath'] as String?
      ..overlayImagePath = json['overlayImagePath'] as String?
      ..overlayMaskImagePath = json['overlayMaskImagePath'] as String?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyGuardianRankDefinitionToJson(
        DestinyGuardianRankDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'rankNumber': instance.rankNumber,
      'presentationNodeHash': instance.presentationNodeHash,
      'foregroundImagePath': instance.foregroundImagePath,
      'overlayImagePath': instance.overlayImagePath,
      'overlayMaskImagePath': instance.overlayMaskImagePath,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
