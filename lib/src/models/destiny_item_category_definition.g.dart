// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemCategoryDefinition _$DestinyItemCategoryDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemCategoryDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..visible = json['visible'] as bool?
      ..deprecated = json['deprecated'] as bool?
      ..shortTitle = json['shortTitle'] as String?
      ..itemTypeRegex = json['itemTypeRegex'] as String?
      ..grantDestinyBreakerType =
          decodeDestinyBreakerType(json['grantDestinyBreakerType'])
      ..plugCategoryIdentifier = json['plugCategoryIdentifier'] as String?
      ..itemTypeRegexNot = json['itemTypeRegexNot'] as String?
      ..originBucketIdentifier = json['originBucketIdentifier'] as String?
      ..grantDestinyItemType =
          decodeDestinyItemType(json['grantDestinyItemType'])
      ..grantDestinySubType =
          decodeDestinyItemSubType(json['grantDestinySubType'])
      ..grantDestinyClass = decodeDestinyClass(json['grantDestinyClass'])
      ..traitId = json['traitId'] as String?
      ..groupedCategoryHashes =
          (json['groupedCategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..parentCategoryHashes = (json['parentCategoryHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..groupCategoryOnly = json['groupCategoryOnly'] as bool?
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyItemCategoryDefinitionToJson(
        DestinyItemCategoryDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'visible': instance.visible,
      'deprecated': instance.deprecated,
      'shortTitle': instance.shortTitle,
      'itemTypeRegex': instance.itemTypeRegex,
      'grantDestinyBreakerType':
          encodeDestinyBreakerType(instance.grantDestinyBreakerType),
      'plugCategoryIdentifier': instance.plugCategoryIdentifier,
      'itemTypeRegexNot': instance.itemTypeRegexNot,
      'originBucketIdentifier': instance.originBucketIdentifier,
      'grantDestinyItemType':
          encodeDestinyItemType(instance.grantDestinyItemType),
      'grantDestinySubType':
          encodeDestinyItemSubType(instance.grantDestinySubType),
      'grantDestinyClass': encodeDestinyClass(instance.grantDestinyClass),
      'traitId': instance.traitId,
      'groupedCategoryHashes': instance.groupedCategoryHashes,
      'parentCategoryHashes': instance.parentCategoryHashes,
      'groupCategoryOnly': instance.groupCategoryOnly,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
