// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_preview_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPreviewBlockDefinition _$DestinyItemPreviewBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemPreviewBlockDefinition()
      ..screenStyle = json['screenStyle'] as String?
      ..previewVendorHash = json['previewVendorHash'] as int?
      ..artifactHash = json['artifactHash'] as int?
      ..previewActionString = json['previewActionString'] as String?
      ..derivedItemCategories =
          (json['derivedItemCategories'] as List<dynamic>?)
              ?.map((e) => DestinyDerivedItemCategoryDefinition.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$DestinyItemPreviewBlockDefinitionToJson(
        DestinyItemPreviewBlockDefinition instance) =>
    <String, dynamic>{
      'screenStyle': instance.screenStyle,
      'previewVendorHash': instance.previewVendorHash,
      'artifactHash': instance.artifactHash,
      'previewActionString': instance.previewActionString,
      'derivedItemCategories':
          instance.derivedItemCategories?.map((e) => e.toJson()).toList(),
    };
