// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat_display_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStatDisplayDefinition _$DestinyStatDisplayDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyStatDisplayDefinition()
      ..statHash = json['statHash'] as int?
      ..maximumValue = json['maximumValue'] as int?
      ..displayAsNumeric = json['displayAsNumeric'] as bool?
      ..displayInterpolation = (json['displayInterpolation'] as List<dynamic>?)
          ?.map((e) => InterpolationPoint.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyStatDisplayDefinitionToJson(
        DestinyStatDisplayDefinition instance) =>
    <String, dynamic>{
      'statHash': instance.statHash,
      'maximumValue': instance.maximumValue,
      'displayAsNumeric': instance.displayAsNumeric,
      'displayInterpolation': instance.displayInterpolation,
    };
