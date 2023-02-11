// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_source_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSourceBlockDefinition _$DestinyItemSourceBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSourceBlockDefinition()
      ..sourceHashes = (json['sourceHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..sources = (json['sources'] as List<dynamic>?)
          ?.map((e) =>
              DestinyItemSourceDefinition.fromJson(e as Map<String, dynamic>))
          .toList()
      ..exclusive = decodeBungieMembershipType(json['exclusive'])
      ..vendorSources = (json['vendorSources'] as List<dynamic>?)
          ?.map((e) => DestinyItemVendorSourceReference.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyItemSourceBlockDefinitionToJson(
        DestinyItemSourceBlockDefinition instance) =>
    <String, dynamic>{
      'sourceHashes': instance.sourceHashes,
      'sources': instance.sources?.map((e) => e.toJson()).toList(),
      'exclusive': encodeBungieMembershipType(instance.exclusive),
      'vendorSources': instance.vendorSources?.map((e) => e.toJson()).toList(),
    };
