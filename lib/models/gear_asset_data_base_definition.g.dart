// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gear_asset_data_base_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GearAssetDataBaseDefinition _$GearAssetDataBaseDefinitionFromJson(
    Map<String, dynamic> json) {
  return GearAssetDataBaseDefinition()
    ..version = json['version'] as int
    ..path = json['path'] as String;
}

Map<String, dynamic> _$GearAssetDataBaseDefinitionToJson(
        GearAssetDataBaseDefinition instance) =>
    <String, dynamic>{'version': instance.version, 'path': instance.path};
