// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentResponse _$ComponentResponseFromJson(Map<String, dynamic> json) =>
    ComponentResponse()
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$ComponentResponseToJson(ComponentResponse instance) =>
    <String, dynamic>{
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
