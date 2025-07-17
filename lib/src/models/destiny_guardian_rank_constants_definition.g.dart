// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_guardian_rank_constants_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyGuardianRankConstantsDefinition
_$DestinyGuardianRankConstantsDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyGuardianRankConstantsDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..rankCount = (json['rankCount'] as num?)?.toInt()
      ..guardianRankHashes =
          (json['guardianRankHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..rootNodeHash = (json['rootNodeHash'] as num?)?.toInt()
      ..iconBackgrounds =
          json['iconBackgrounds'] == null
              ? null
              : DestinyGuardianRankIconBackgroundsDefinition.fromJson(
                json['iconBackgrounds'] as Map<String, dynamic>,
              )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyGuardianRankConstantsDefinitionToJson(
  DestinyGuardianRankConstantsDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'rankCount': instance.rankCount,
  'guardianRankHashes': instance.guardianRankHashes,
  'rootNodeHash': instance.rootNodeHash,
  'iconBackgrounds': instance.iconBackgrounds?.toJson(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
