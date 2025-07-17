// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_objective_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemObjectiveBlockDefinition
    _$DestinyItemObjectiveBlockDefinitionFromJson(Map<String, dynamic> json) =>
        DestinyItemObjectiveBlockDefinition()
          ..objectiveHashes = (json['objectiveHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
          ..displayActivityHashes =
              (json['displayActivityHashes'] as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()
          ..requireFullObjectiveCompletion =
              json['requireFullObjectiveCompletion'] as bool?
          ..questlineItemHash = (json['questlineItemHash'] as num?)?.toInt()
          ..narrative = json['narrative'] as String?
          ..objectiveVerbName = json['objectiveVerbName'] as String?
          ..questTypeIdentifier = json['questTypeIdentifier'] as String?
          ..questTypeHash = (json['questTypeHash'] as num?)?.toInt()
          ..perObjectiveDisplayProperties =
              (json['perObjectiveDisplayProperties'] as List<dynamic>?)
                  ?.map((e) => DestinyObjectiveDisplayProperties.fromJson(
                      e as Map<String, dynamic>))
                  .toList()
          ..displayAsStatTracker = json['displayAsStatTracker'] as bool?;

Map<String, dynamic> _$DestinyItemObjectiveBlockDefinitionToJson(
        DestinyItemObjectiveBlockDefinition instance) =>
    <String, dynamic>{
      'objectiveHashes': instance.objectiveHashes,
      'displayActivityHashes': instance.displayActivityHashes,
      'requireFullObjectiveCompletion': instance.requireFullObjectiveCompletion,
      'questlineItemHash': instance.questlineItemHash,
      'narrative': instance.narrative,
      'objectiveVerbName': instance.objectiveVerbName,
      'questTypeIdentifier': instance.questTypeIdentifier,
      'questTypeHash': instance.questTypeHash,
      'perObjectiveDisplayProperties': instance.perObjectiveDisplayProperties
          ?.map((e) => e.toJson())
          .toList(),
      'displayAsStatTracker': instance.displayAsStatTracker,
    };
