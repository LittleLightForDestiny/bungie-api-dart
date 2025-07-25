// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_node_step_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyNodeStepDefinition _$DestinyNodeStepDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyNodeStepDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..stepIndex = (json['stepIndex'] as num?)?.toInt()
      ..nodeStepHash = (json['nodeStepHash'] as num?)?.toInt()
      ..interactionDescription = json['interactionDescription'] as String?
      ..damageType = decodeDamageType(json['damageType'])
      ..damageTypeHash = (json['damageTypeHash'] as num?)?.toInt()
      ..activationRequirement =
          json['activationRequirement'] == null
              ? null
              : DestinyNodeActivationRequirement.fromJson(
                json['activationRequirement'] as Map<String, dynamic>,
              )
      ..canActivateNextStep = json['canActivateNextStep'] as bool?
      ..nextStepIndex = (json['nextStepIndex'] as num?)?.toInt()
      ..isNextStepRandom = json['isNextStepRandom'] as bool?
      ..perkHashes =
          (json['perkHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..startProgressionBarAtProgress =
          (json['startProgressionBarAtProgress'] as num?)?.toInt()
      ..statHashes =
          (json['statHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..affectsQuality = json['affectsQuality'] as bool?
      ..stepGroups =
          json['stepGroups'] == null
              ? null
              : DestinyTalentNodeStepGroups.fromJson(
                json['stepGroups'] as Map<String, dynamic>,
              )
      ..affectsLevel = json['affectsLevel'] as bool?
      ..socketReplacements =
          (json['socketReplacements'] as List<dynamic>?)
              ?.map(
                (e) => DestinyNodeSocketReplaceResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyNodeStepDefinitionToJson(
  DestinyNodeStepDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'stepIndex': instance.stepIndex,
  'nodeStepHash': instance.nodeStepHash,
  'interactionDescription': instance.interactionDescription,
  'damageType': encodeDamageType(instance.damageType),
  'damageTypeHash': instance.damageTypeHash,
  'activationRequirement': instance.activationRequirement?.toJson(),
  'canActivateNextStep': instance.canActivateNextStep,
  'nextStepIndex': instance.nextStepIndex,
  'isNextStepRandom': instance.isNextStepRandom,
  'perkHashes': instance.perkHashes,
  'startProgressionBarAtProgress': instance.startProgressionBarAtProgress,
  'statHashes': instance.statHashes,
  'affectsQuality': instance.affectsQuality,
  'stepGroups': instance.stepGroups?.toJson(),
  'affectsLevel': instance.affectsLevel,
  'socketReplacements':
      instance.socketReplacements?.map((e) => e.toJson()).toList(),
};
