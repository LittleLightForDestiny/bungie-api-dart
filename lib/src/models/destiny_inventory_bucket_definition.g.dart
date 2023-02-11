// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_bucket_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryBucketDefinition _$DestinyInventoryBucketDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyInventoryBucketDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..scope = decodeBucketScope(json['scope'])
      ..category = decodeBucketCategory(json['category'])
      ..bucketOrder = json['bucketOrder'] as int?
      ..itemCount = json['itemCount'] as int?
      ..location = decodeItemLocation(json['location'])
      ..hasTransferDestination = json['hasTransferDestination'] as bool?
      ..enabled = json['enabled'] as bool?
      ..fifo = json['fifo'] as bool?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyInventoryBucketDefinitionToJson(
        DestinyInventoryBucketDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'scope': encodeBucketScope(instance.scope),
      'category': encodeBucketCategory(instance.category),
      'bucketOrder': instance.bucketOrder,
      'itemCount': instance.itemCount,
      'location': encodeItemLocation(instance.location),
      'hasTransferDestination': instance.hasTransferDestination,
      'enabled': instance.enabled,
      'fifo': instance.fifo,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
