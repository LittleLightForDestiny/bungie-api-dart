// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_location_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorLocationDefinition _$DestinyVendorLocationDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyVendorLocationDefinition()
    ..destinationHash = json['destinationHash'] as int?
    ..backgroundImagePath = json['backgroundImagePath'] as String?;
}

Map<String, dynamic> _$DestinyVendorLocationDefinitionToJson(
        DestinyVendorLocationDefinition instance) =>
    <String, dynamic>{
      'destinationHash': instance.destinationHash,
      'backgroundImagePath': instance.backgroundImagePath,
    };
