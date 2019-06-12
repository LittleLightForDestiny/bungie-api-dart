// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_mode_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityModeDefinition _$DestinyActivityModeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyActivityModeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..pgcrImage = json['pgcrImage'] as String
    ..modeType = json['modeType'] as int
    ..activityModeCategory = json['activityModeCategory'] as int
    ..isTeamBased = json['isTeamBased'] as bool
    ..isAggregateMode = json['isAggregateMode'] as bool
    ..parentHashes =
        (json['parentHashes'] as List)?.map((e) => e as int)?.toList()
    ..friendlyName = json['friendlyName'] as String
    ..activityModeMappings =
        (json['activityModeMappings'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    )
    ..display = json['display'] as bool
    ..order = json['order'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyActivityModeDefinitionToJson(
        DestinyActivityModeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'pgcrImage': instance.pgcrImage,
      'modeType': instance.modeType,
      'activityModeCategory': instance.activityModeCategory,
      'isTeamBased': instance.isTeamBased,
      'isAggregateMode': instance.isAggregateMode,
      'parentHashes': instance.parentHashes,
      'friendlyName': instance.friendlyName,
      'activityModeMappings': instance.activityModeMappings,
      'display': instance.display,
      'order': instance.order,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
