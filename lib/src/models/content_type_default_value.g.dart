// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_type_default_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTypeDefaultValue _$ContentTypeDefaultValueFromJson(
    Map<String, dynamic> json) {
  return ContentTypeDefaultValue()
    ..whenClause = json['whenClause'] as String
    ..whenValue = json['whenValue'] as String
    ..defaultValue = json['defaultValue'] as String;
}

Map<String, dynamic> _$ContentTypeDefaultValueToJson(
        ContentTypeDefaultValue instance) =>
    <String, dynamic>{
      'whenClause': instance.whenClause,
      'whenValue': instance.whenValue,
      'defaultValue': instance.defaultValue,
    };
