// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat_group_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStatGroupDefinition _$DestinyStatGroupDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyStatGroupDefinition()
      ..maximumValue = (json['maximumValue'] as num?)?.toInt()
      ..uiPosition = (json['uiPosition'] as num?)?.toInt()
      ..scaledStats =
          (json['scaledStats'] as List<dynamic>?)
              ?.map(
                (e) => DestinyStatDisplayDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..overrides = (json['overrides'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyStatOverrideDefinition.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyStatGroupDefinitionToJson(
  DestinyStatGroupDefinition instance,
) => <String, dynamic>{
  'maximumValue': instance.maximumValue,
  'uiPosition': instance.uiPosition,
  'scaledStats': instance.scaledStats?.map((e) => e.toJson()).toList(),
  'overrides': instance.overrides?.map((k, e) => MapEntry(k, e.toJson())),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
