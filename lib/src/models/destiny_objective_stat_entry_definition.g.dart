// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_objective_stat_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyObjectiveStatEntryDefinition
    _$DestinyObjectiveStatEntryDefinitionFromJson(Map<String, dynamic> json) =>
        DestinyObjectiveStatEntryDefinition()
          ..stat = json['stat'] == null
              ? null
              : DestinyItemInvestmentStatDefinition.fromJson(
                  json['stat'] as Map<String, dynamic>)
          ..style = decodeDestinyObjectiveGrantStyle(json['style']);

Map<String, dynamic> _$DestinyObjectiveStatEntryDefinitionToJson(
        DestinyObjectiveStatEntryDefinition instance) =>
    <String, dynamic>{
      'stat': instance.stat,
      'style': encodeDestinyObjectiveGrantStyle(instance.style),
    };
