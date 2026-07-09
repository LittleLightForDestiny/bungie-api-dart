// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_icon_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyIconDefinition _$DestinyIconDefinitionFromJson(
  Map<String, dynamic> json,
) => DestinyIconDefinition()
  ..foreground = json['foreground'] as String?
  ..background = json['background'] as String?
  ..secondaryBackground = json['secondaryBackground'] as String?
  ..specialBackground = json['specialBackground'] as String?
  ..highResForeground = json['highResForeground'] as String?
  ..hash = (json['hash'] as num?)?.toInt()
  ..index = (json['index'] as num?)?.toInt()
  ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyIconDefinitionToJson(
  DestinyIconDefinition instance,
) => <String, dynamic>{
  'foreground': instance.foreground,
  'background': instance.background,
  'secondaryBackground': instance.secondaryBackground,
  'specialBackground': instance.specialBackground,
  'highResForeground': instance.highResForeground,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
