// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_constants_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderConstantsDefinition
_$DestinyFireteamFinderConstantsDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyFireteamFinderConstantsDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..fireteamFinderActivityGraphRootCategoryHashes =
          (json['fireteamFinderActivityGraphRootCategoryHashes']
                  as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..allFireteamFinderActivityHashes =
          (json['allFireteamFinderActivityHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..guardianOathDisplayProperties =
          json['guardianOathDisplayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['guardianOathDisplayProperties'] as Map<String, dynamic>,
              )
      ..guardianOathTenets =
          (json['guardianOathTenets'] as List<dynamic>?)
              ?.map(
                (e) => DestinyDisplayPropertiesDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFireteamFinderConstantsDefinitionToJson(
  DestinyFireteamFinderConstantsDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'fireteamFinderActivityGraphRootCategoryHashes':
      instance.fireteamFinderActivityGraphRootCategoryHashes,
  'allFireteamFinderActivityHashes': instance.allFireteamFinderActivityHashes,
  'guardianOathDisplayProperties':
      instance.guardianOathDisplayProperties?.toJson(),
  'guardianOathTenets':
      instance.guardianOathTenets?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
