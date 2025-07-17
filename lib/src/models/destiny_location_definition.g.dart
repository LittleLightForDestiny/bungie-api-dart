// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_location_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLocationDefinition _$DestinyLocationDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyLocationDefinition()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..locationReleases = (json['locationReleases'] as List<dynamic>?)
          ?.map((e) => DestinyLocationReleaseDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyLocationDefinitionToJson(
        DestinyLocationDefinition instance) =>
    <String, dynamic>{
      'vendorHash': instance.vendorHash,
      'locationReleases':
          instance.locationReleases?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
