// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_string_variables_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStringVariablesComponent _$DestinyStringVariablesComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyStringVariablesComponent()
      ..integerValuesByHash =
          (json['integerValuesByHash'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      );

Map<String, dynamic> _$DestinyStringVariablesComponentToJson(
        DestinyStringVariablesComponent instance) =>
    <String, dynamic>{
      'integerValuesByHash': instance.integerValuesByHash,
    };
