// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_sale_item_action_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorSaleItemActionBlockDefinition
_$DestinyVendorSaleItemActionBlockDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorSaleItemActionBlockDefinition()
      ..executeSeconds = (json['executeSeconds'] as num?)?.toDouble()
      ..isPositive = json['isPositive'] as bool?;

Map<String, dynamic> _$DestinyVendorSaleItemActionBlockDefinitionToJson(
  DestinyVendorSaleItemActionBlockDefinition instance,
) => <String, dynamic>{
  'executeSeconds': instance.executeSeconds,
  'isPositive': instance.isPositive,
};
