// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_plug_whitelist_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlugWhitelistEntryDefinition
    _$DestinyPlugWhitelistEntryDefinitionFromJson(Map<String, dynamic> json) =>
        DestinyPlugWhitelistEntryDefinition()
          ..categoryHash = (json['categoryHash'] as num?)?.toInt()
          ..categoryIdentifier = json['categoryIdentifier'] as String?
          ..reinitializationPossiblePlugHashes =
              (json['reinitializationPossiblePlugHashes'] as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList();

Map<String, dynamic> _$DestinyPlugWhitelistEntryDefinitionToJson(
        DestinyPlugWhitelistEntryDefinition instance) =>
    <String, dynamic>{
      'categoryHash': instance.categoryHash,
      'categoryIdentifier': instance.categoryIdentifier,
      'reinitializationPossiblePlugHashes':
          instance.reinitializationPossiblePlugHashes,
    };
