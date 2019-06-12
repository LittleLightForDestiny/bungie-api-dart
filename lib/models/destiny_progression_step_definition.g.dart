// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_step_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionStepDefinition _$DestinyProgressionStepDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyProgressionStepDefinition()
    ..stepName = json['stepName'] as String
    ..displayEffectType = json['displayEffectType'] as int
    ..progressTotal = json['progressTotal'] as int
    ..rewardItems = (json['rewardItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..icon = json['icon'] as String;
}

Map<String, dynamic> _$DestinyProgressionStepDefinitionToJson(
        DestinyProgressionStepDefinition instance) =>
    <String, dynamic>{
      'stepName': instance.stepName,
      'displayEffectType': instance.displayEffectType,
      'progressTotal': instance.progressTotal,
      'rewardItems': instance.rewardItems,
      'icon': instance.icon
    };
