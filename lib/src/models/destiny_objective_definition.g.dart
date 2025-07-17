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
      ..completionValue = (json['completionValue'] as num?)?.toInt()
      ..scope = decodeDestinyGatingScope(json['scope'])
      ..locationHash = (json['locationHash'] as num?)?.toInt()
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
      ..minimumVisibilityThreshold =
          (json['minimumVisibilityThreshold'] as num?)?.toInt()
      ..allowOvercompletion = json['allowOvercompletion'] as bool?
      ..showValueOnComplete = json['showValueOnComplete'] as bool?
      ..completedValueStyle =
          decodeDestinyUnlockValueUIStyle(json['completedValueStyle'])
      ..inProgressValueStyle =
          decodeDestinyUnlockValueUIStyle(json['inProgressValueStyle'])
      ..uiLabel = json['uiLabel'] as String?
      ..uiStyle = decodeDestinyObjectiveUiStyle(json['uiStyle'])
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyObjectiveDefinitionToJson(
        DestinyObjectiveDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'completionValue': instance.completionValue,
      'scope': encodeDestinyGatingScope(instance.scope),
      'locationHash': instance.locationHash,
      'allowNegativeValue': instance.allowNegativeValue,
      'allowValueChangeWhenCompleted': instance.allowValueChangeWhenCompleted,
      'isCountingDownward': instance.isCountingDownward,
      'valueStyle': encodeDestinyUnlockValueUIStyle(instance.valueStyle),
      'progressDescription': instance.progressDescription,
      'perks': instance.perks?.toJson(),
      'stats': instance.stats?.toJson(),
      'minimumVisibilityThreshold': instance.minimumVisibilityThreshold,
      'allowOvercompletion': instance.allowOvercompletion,
      'showValueOnComplete': instance.showValueOnComplete,
      'completedValueStyle':
          encodeDestinyUnlockValueUIStyle(instance.completedValueStyle),
      'inProgressValueStyle':
          encodeDestinyUnlockValueUIStyle(instance.inProgressValueStyle),
      'uiLabel': instance.uiLabel,
      'uiStyle': encodeDestinyObjectiveUiStyle(instance.uiStyle),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
