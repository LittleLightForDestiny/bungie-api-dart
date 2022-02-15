// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_objective_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyObjectiveDefinition _$DestinyObjectiveDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyObjectiveDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..completionValue = json['completionValue'] as int?
      ..scope = decodeDestinyGatingScope(json['scope'])
      ..locationHash = json['locationHash'] as int?
      ..allowNegativeValue = json['allowNegativeValue'] as bool?
      ..allowValueChangeWhenCompleted =
          json['allowValueChangeWhenCompleted'] as bool?
      ..isCountingDownward = json['isCountingDownward'] as bool?
      ..valueStyle = decodeDestinyUnlockValueUIStyle(json['valueStyle'])
      ..progressDescription = json['progressDescription'] as String?
      ..perks = json['perks'] == null
          ? null
          : DestinyObjectivePerkEntryDefinition.fromJson(
              json['perks'] as Map<String, dynamic>)
      ..stats = json['stats'] == null
          ? null
          : DestinyObjectiveStatEntryDefinition.fromJson(
              json['stats'] as Map<String, dynamic>)
      ..minimumVisibilityThreshold = json['minimumVisibilityThreshold'] as int?
      ..allowOvercompletion = json['allowOvercompletion'] as bool?
      ..showValueOnComplete = json['showValueOnComplete'] as bool?
      ..completedValueStyle =
          decodeDestinyUnlockValueUIStyle(json['completedValueStyle'])
      ..inProgressValueStyle =
          decodeDestinyUnlockValueUIStyle(json['inProgressValueStyle'])
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyObjectiveDefinitionToJson(
        DestinyObjectiveDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'completionValue': instance.completionValue,
      'scope': encodeDestinyGatingScope(instance.scope),
      'locationHash': instance.locationHash,
      'allowNegativeValue': instance.allowNegativeValue,
      'allowValueChangeWhenCompleted': instance.allowValueChangeWhenCompleted,
      'isCountingDownward': instance.isCountingDownward,
      'valueStyle': encodeDestinyUnlockValueUIStyle(instance.valueStyle),
      'progressDescription': instance.progressDescription,
      'perks': instance.perks,
      'stats': instance.stats,
      'minimumVisibilityThreshold': instance.minimumVisibilityThreshold,
      'allowOvercompletion': instance.allowOvercompletion,
      'showValueOnComplete': instance.showValueOnComplete,
      'completedValueStyle':
          encodeDestinyUnlockValueUIStyle(instance.completedValueStyle),
      'inProgressValueStyle':
          encodeDestinyUnlockValueUIStyle(instance.inProgressValueStyle),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
