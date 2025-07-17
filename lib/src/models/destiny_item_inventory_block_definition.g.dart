// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_inventory_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInventoryBlockDefinition
    _$DestinyItemInventoryBlockDefinitionFromJson(Map<String, dynamic> json) =>
        DestinyItemInventoryBlockDefinition()
          ..stackUniqueLabel = json['stackUniqueLabel'] as String?
          ..maxStackSize = (json['maxStackSize'] as num?)?.toInt()
          ..bucketTypeHash = (json['bucketTypeHash'] as num?)?.toInt()
          ..recoveryBucketTypeHash =
              (json['recoveryBucketTypeHash'] as num?)?.toInt()
          ..tierTypeHash = (json['tierTypeHash'] as num?)?.toInt()
          ..isInstanceItem = json['isInstanceItem'] as bool?
          ..tierTypeName = json['tierTypeName'] as String?
          ..tierType = decodeTierType(json['tierType'])
          ..expirationTooltip = json['expirationTooltip'] as String?
          ..expiredInActivityMessage =
              json['expiredInActivityMessage'] as String?
          ..expiredInOrbitMessage = json['expiredInOrbitMessage'] as String?
          ..suppressExpirationWhenObjectivesComplete =
              json['suppressExpirationWhenObjectivesComplete'] as bool?
          ..recipeItemHash = (json['recipeItemHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyItemInventoryBlockDefinitionToJson(
        DestinyItemInventoryBlockDefinition instance) =>
    <String, dynamic>{
      'stackUniqueLabel': instance.stackUniqueLabel,
      'maxStackSize': instance.maxStackSize,
      'bucketTypeHash': instance.bucketTypeHash,
      'recoveryBucketTypeHash': instance.recoveryBucketTypeHash,
      'tierTypeHash': instance.tierTypeHash,
      'isInstanceItem': instance.isInstanceItem,
      'tierTypeName': instance.tierTypeName,
      'tierType': encodeTierType(instance.tierType),
      'expirationTooltip': instance.expirationTooltip,
      'expiredInActivityMessage': instance.expiredInActivityMessage,
      'expiredInOrbitMessage': instance.expiredInOrbitMessage,
      'suppressExpirationWhenObjectivesComplete':
          instance.suppressExpirationWhenObjectivesComplete,
      'recipeItemHash': instance.recipeItemHash,
    };
