// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadout_constants_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutConstantsDefinition _$DestinyLoadoutConstantsDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyLoadoutConstantsDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..whiteIconImagePath = json['whiteIconImagePath'] as String?
      ..blackIconImagePath = json['blackIconImagePath'] as String?
      ..loadoutCountPerCharacter =
          (json['loadoutCountPerCharacter'] as num?)?.toInt()
      ..loadoutPreviewFilterOutSocketCategoryHashes =
          (json['loadoutPreviewFilterOutSocketCategoryHashes']
                  as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..loadoutPreviewFilterOutSocketTypeHashes =
          (json['loadoutPreviewFilterOutSocketTypeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..loadoutNameHashes =
          (json['loadoutNameHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..loadoutIconHashes =
          (json['loadoutIconHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..loadoutColorHashes =
          (json['loadoutColorHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyLoadoutConstantsDefinitionToJson(
  DestinyLoadoutConstantsDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'whiteIconImagePath': instance.whiteIconImagePath,
  'blackIconImagePath': instance.blackIconImagePath,
  'loadoutCountPerCharacter': instance.loadoutCountPerCharacter,
  'loadoutPreviewFilterOutSocketCategoryHashes':
      instance.loadoutPreviewFilterOutSocketCategoryHashes,
  'loadoutPreviewFilterOutSocketTypeHashes':
      instance.loadoutPreviewFilterOutSocketTypeHashes,
  'loadoutNameHashes': instance.loadoutNameHashes,
  'loadoutIconHashes': instance.loadoutIconHashes,
  'loadoutColorHashes': instance.loadoutColorHashes,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
