// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_season_pass_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySeasonPassDefinition _$DestinySeasonPassDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinySeasonPassDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..rewardProgressionHash = (json['rewardProgressionHash'] as num?)?.toInt()
      ..prestigeProgressionHash =
          (json['prestigeProgressionHash'] as num?)?.toInt()
      ..linkRedirectPath = json['linkRedirectPath'] as String?
      ..color =
          json['color'] == null
              ? null
              : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
      ..images =
          json['images'] == null
              ? null
              : DestinySeasonPassImages.fromJson(
                json['images'] as Map<String, dynamic>,
              )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySeasonPassDefinitionToJson(
  DestinySeasonPassDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'rewardProgressionHash': instance.rewardProgressionHash,
  'prestigeProgressionHash': instance.prestigeProgressionHash,
  'linkRedirectPath': instance.linkRedirectPath,
  'color': instance.color?.toJson(),
  'images': instance.images?.toJson(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
