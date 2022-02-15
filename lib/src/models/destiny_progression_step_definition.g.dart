// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_step_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionStepDefinition _$DestinyProgressionStepDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyProgressionStepDefinition()
      ..stepName = json['stepName'] as String?
      ..displayEffectType =
          decodeDestinyProgressionStepDisplayEffect(json['displayEffectType'])
      ..progressTotal = json['progressTotal'] as int?
      ..rewardItems = (json['rewardItems'] as List<dynamic>?)
          ?.map((e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
          .toList()
      ..icon = json['icon'] as String?;

Map<String, dynamic> _$DestinyProgressionStepDefinitionToJson(
        DestinyProgressionStepDefinition instance) =>
    <String, dynamic>{
      'stepName': instance.stepName,
      'displayEffectType':
          encodeDestinyProgressionStepDisplayEffect(instance.displayEffectType),
      'progressTotal': instance.progressTotal,
      'rewardItems': instance.rewardItems,
      'icon': instance.icon,
    };
