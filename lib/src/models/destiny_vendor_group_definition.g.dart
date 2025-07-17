// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_group_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorGroupDefinition _$DestinyVendorGroupDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorGroupDefinition()
      ..order = (json['order'] as num?)?.toInt()
      ..categoryName = json['categoryName'] as String?
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyVendorGroupDefinitionToJson(
        DestinyVendorGroupDefinition instance) =>
    <String, dynamic>{
      'order': instance.order,
      'categoryName': instance.categoryName,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
