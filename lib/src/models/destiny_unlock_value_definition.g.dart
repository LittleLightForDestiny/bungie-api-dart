// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_unlock_value_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyUnlockValueDefinition _$DestinyUnlockValueDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyUnlockValueDefinition()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyUnlockValueDefinitionToJson(
  DestinyUnlockValueDefinition instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
