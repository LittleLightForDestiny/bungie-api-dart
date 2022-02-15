// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreSystem _$CoreSystemFromJson(Map<String, dynamic> json) => CoreSystem()
  ..enabled = json['enabled'] as bool?
  ..parameters = (json['parameters'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  );

Map<String, dynamic> _$CoreSystemToJson(CoreSystem instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'parameters': instance.parameters,
    };
