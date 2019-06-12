// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_location_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLocationDefinition _$DestinyLocationDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyLocationDefinition()
    ..vendorHash = json['vendorHash'] as int
    ..locationReleases = (json['locationReleases'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyLocationReleaseDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyLocationDefinitionToJson(
        DestinyLocationDefinition instance) =>
    <String, dynamic>{
      'vendorHash': instance.vendorHash,
      'locationReleases': instance.locationReleases,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
