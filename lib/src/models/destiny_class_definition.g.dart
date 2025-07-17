// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_class_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyClassDefinition _$DestinyClassDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyClassDefinition()
      ..classType = decodeDestinyClass(json['classType'])
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..genderedClassNames =
          (json['genderedClassNames'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      )
      ..genderedClassNamesByGenderHash =
          (json['genderedClassNamesByGenderHash'] as Map<String, dynamic>?)
              ?.map(
        (k, e) => MapEntry(k, e as String),
      )
      ..mentorVendorHash = (json['mentorVendorHash'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyClassDefinitionToJson(
        DestinyClassDefinition instance) =>
    <String, dynamic>{
      'classType': encodeDestinyClass(instance.classType),
      'displayProperties': instance.displayProperties?.toJson(),
      'genderedClassNames': instance.genderedClassNames,
      'genderedClassNamesByGenderHash': instance.genderedClassNamesByGenderHash,
      'mentorVendorHash': instance.mentorVendorHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
