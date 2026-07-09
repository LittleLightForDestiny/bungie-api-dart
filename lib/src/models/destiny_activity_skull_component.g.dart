// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_skull_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySkullComponent _$DestinyActivitySkullComponentFromJson(
  Map<String, dynamic> json,
) => DestinyActivitySkullComponent()
  ..hash = (json['hash'] as num?)?.toInt()
  ..skullIdentifierHash = (json['skullIdentifierHash'] as num?)?.toInt()
  ..isEnabled = json['isEnabled'] as bool?;

Map<String, dynamic> _$DestinyActivitySkullComponentToJson(
  DestinyActivitySkullComponent instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'skullIdentifierHash': instance.skullIdentifierHash,
  'isEnabled': instance.isEnabled,
};
