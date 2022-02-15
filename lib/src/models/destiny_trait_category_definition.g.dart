// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_trait_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTraitCategoryDefinition _$DestinyTraitCategoryDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyTraitCategoryDefinition()
      ..traitCategoryId = json['traitCategoryId'] as String?
      ..traitHashes =
          (json['traitHashes'] as List<dynamic>?)?.map((e) => e as int).toList()
      ..traitIds =
          (json['traitIds'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyTraitCategoryDefinitionToJson(
        DestinyTraitCategoryDefinition instance) =>
    <String, dynamic>{
      'traitCategoryId': instance.traitCategoryId,
      'traitHashes': instance.traitHashes,
      'traitIds': instance.traitIds,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
