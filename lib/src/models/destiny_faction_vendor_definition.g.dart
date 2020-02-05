// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_faction_vendor_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFactionVendorDefinition _$DestinyFactionVendorDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyFactionVendorDefinition()
    ..vendorHash = json['vendorHash'] as int
    ..destinationHash = json['destinationHash'] as int
    ..backgroundImagePath = json['backgroundImagePath'] as String;
}

Map<String, dynamic> _$DestinyFactionVendorDefinitionToJson(
        DestinyFactionVendorDefinition instance) =>
    <String, dynamic>{
      'vendorHash': instance.vendorHash,
      'destinationHash': instance.destinationHash,
      'backgroundImagePath': instance.backgroundImagePath,
    };
