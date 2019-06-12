// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_value_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemValueBlockDefinition _$DestinyItemValueBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemValueBlockDefinition()
    ..itemValue = (json['itemValue'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..valueDescription = json['valueDescription'] as String;
}

Map<String, dynamic> _$DestinyItemValueBlockDefinitionToJson(
        DestinyItemValueBlockDefinition instance) =>
    <String, dynamic>{
      'itemValue': instance.itemValue,
      'valueDescription': instance.valueDescription
    };
