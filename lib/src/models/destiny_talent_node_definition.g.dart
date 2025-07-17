// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNodeDefinition _$DestinyTalentNodeDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyTalentNodeDefinition()
      ..nodeIndex = (json['nodeIndex'] as num?)?.toInt()
      ..nodeHash = (json['nodeHash'] as num?)?.toInt()
      ..row = (json['row'] as num?)?.toInt()
      ..column = (json['column'] as num?)?.toInt()
      ..prerequisiteNodeIndexes =
          (json['prerequisiteNodeIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..binaryPairNodeIndex = (json['binaryPairNodeIndex'] as num?)?.toInt()
      ..autoUnlocks = json['autoUnlocks'] as bool?
      ..lastStepRepeats = json['lastStepRepeats'] as bool?
      ..isRandom = json['isRandom'] as bool?
      ..randomActivationRequirement =
          json['randomActivationRequirement'] == null
              ? null
              : DestinyNodeActivationRequirement.fromJson(
                json['randomActivationRequirement'] as Map<String, dynamic>,
              )
      ..isRandomRepurchasable = json['isRandomRepurchasable'] as bool?
      ..steps =
          (json['steps'] as List<dynamic>?)
              ?.map(
                (e) => DestinyNodeStepDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..exclusiveWithNodeHashes =
          (json['exclusiveWithNodeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..randomStartProgressionBarAtProgression =
          (json['randomStartProgressionBarAtProgression'] as num?)?.toInt()
      ..layoutIdentifier = json['layoutIdentifier'] as String?
      ..groupHash = (json['groupHash'] as num?)?.toInt()
      ..loreHash = (json['loreHash'] as num?)?.toInt()
      ..nodeStyleIdentifier = json['nodeStyleIdentifier'] as String?
      ..ignoreForCompletion = json['ignoreForCompletion'] as bool?;

Map<String, dynamic> _$DestinyTalentNodeDefinitionToJson(
  DestinyTalentNodeDefinition instance,
) => <String, dynamic>{
  'nodeIndex': instance.nodeIndex,
  'nodeHash': instance.nodeHash,
  'row': instance.row,
  'column': instance.column,
  'prerequisiteNodeIndexes': instance.prerequisiteNodeIndexes,
  'binaryPairNodeIndex': instance.binaryPairNodeIndex,
  'autoUnlocks': instance.autoUnlocks,
  'lastStepRepeats': instance.lastStepRepeats,
  'isRandom': instance.isRandom,
  'randomActivationRequirement': instance.randomActivationRequirement?.toJson(),
  'isRandomRepurchasable': instance.isRandomRepurchasable,
  'steps': instance.steps?.map((e) => e.toJson()).toList(),
  'exclusiveWithNodeHashes': instance.exclusiveWithNodeHashes,
  'randomStartProgressionBarAtProgression':
      instance.randomStartProgressionBarAtProgression,
  'layoutIdentifier': instance.layoutIdentifier,
  'groupHash': instance.groupHash,
  'loreHash': instance.loreHash,
  'nodeStyleIdentifier': instance.nodeStyleIdentifier,
  'ignoreForCompletion': instance.ignoreForCompletion,
};
