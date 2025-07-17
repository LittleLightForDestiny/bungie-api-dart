// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_season_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySeasonDefinition _$DestinySeasonDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinySeasonDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..backgroundImagePath = json['backgroundImagePath'] as String?
      ..seasonNumber = (json['seasonNumber'] as num?)?.toInt()
      ..startDate = json['startDate'] as String?
      ..endDate = json['endDate'] as String?
      ..seasonPassHash = (json['seasonPassHash'] as num?)?.toInt()
      ..seasonPassList =
          (json['seasonPassList'] as List<dynamic>?)
              ?.map(
                (e) => DestinySeasonPassReference.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..seasonPassProgressionHash =
          (json['seasonPassProgressionHash'] as num?)?.toInt()
      ..artifactItemHash = (json['artifactItemHash'] as num?)?.toInt()
      ..sealPresentationNodeHash =
          (json['sealPresentationNodeHash'] as num?)?.toInt()
      ..acts =
          (json['acts'] as List<dynamic>?)
              ?.map(
                (e) => DestinySeasonActDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..seasonalChallengesPresentationNodeHash =
          (json['seasonalChallengesPresentationNodeHash'] as num?)?.toInt()
      ..preview =
          json['preview'] == null
              ? null
              : DestinySeasonPreviewDefinition.fromJson(
                json['preview'] as Map<String, dynamic>,
              )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySeasonDefinitionToJson(
  DestinySeasonDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'backgroundImagePath': instance.backgroundImagePath,
  'seasonNumber': instance.seasonNumber,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'seasonPassHash': instance.seasonPassHash,
  'seasonPassList': instance.seasonPassList?.map((e) => e.toJson()).toList(),
  'seasonPassProgressionHash': instance.seasonPassProgressionHash,
  'artifactItemHash': instance.artifactItemHash,
  'sealPresentationNodeHash': instance.sealPresentationNodeHash,
  'acts': instance.acts?.map((e) => e.toJson()).toList(),
  'seasonalChallengesPresentationNodeHash':
      instance.seasonalChallengesPresentationNodeHash,
  'preview': instance.preview?.toJson(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
