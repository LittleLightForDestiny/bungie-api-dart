// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_source_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSourceBlockDefinition _$DestinyItemSourceBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSourceBlockDefinition()
    ..sourceHashes =
        (json['sourceHashes'] as List)?.map((e) => e as int)?.toList()
    ..sources = (json['sources'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSourceDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..exclusive = json['exclusive'] as int
    ..vendorSources = (json['vendorSources'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemVendorSourceReference.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyItemSourceBlockDefinitionToJson(
        DestinyItemSourceBlockDefinition instance) =>
    <String, dynamic>{
      'sourceHashes': instance.sourceHashes,
      'sources': instance.sources,
      'exclusive': instance.exclusive,
      'vendorSources': instance.vendorSources
    };
