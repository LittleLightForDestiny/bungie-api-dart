// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_objective_perk_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyObjectivePerkEntryDefinition
_$DestinyObjectivePerkEntryDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyObjectivePerkEntryDefinition()
      ..perkHash = (json['perkHash'] as num?)?.toInt()
      ..style = decodeDestinyObjectiveGrantStyle(json['style']);

Map<String, dynamic> _$DestinyObjectivePerkEntryDefinitionToJson(
  DestinyObjectivePerkEntryDefinition instance,
) => <String, dynamic>{
  'perkHash': instance.perkHash,
  'style': encodeDestinyObjectiveGrantStyle(instance.style),
};
