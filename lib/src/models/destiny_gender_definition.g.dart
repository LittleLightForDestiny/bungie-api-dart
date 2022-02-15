// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_gender_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyGenderDefinition _$DestinyGenderDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyGenderDefinition()
      ..genderType = decodeDestinyGender(json['genderType'])
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyGenderDefinitionToJson(
        DestinyGenderDefinition instance) =>
    <String, dynamic>{
      'genderType': encodeDestinyGender(instance.genderType),
      'displayProperties': instance.displayProperties,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
