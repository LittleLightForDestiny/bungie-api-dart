// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gear_asset_data_base_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GearAssetDataBaseDefinition _$GearAssetDataBaseDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    GearAssetDataBaseDefinition()
      ..version = (json['version'] as num?)?.toInt()
      ..path = json['path'] as String?;

Map<String, dynamic> _$GearAssetDataBaseDefinitionToJson(
  GearAssetDataBaseDefinition instance,
) => <String, dynamic>{'version': instance.version, 'path': instance.path};
