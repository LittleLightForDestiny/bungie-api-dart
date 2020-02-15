// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_step_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionStepDefinition _$DestinyProgressionStepDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyProgressionStepDefinition()
    ..stepName = json['stepName'] as String
    ..displayEffectType = _$enumDecodeNullable(
        _$DestinyProgressionStepDisplayEffectEnumMap, json['displayEffectType'],
        unknownValue:
            DestinyProgressionStepDisplayEffect.ProtectedInvalidEnumValue)
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
      'displayEffectType': _$DestinyProgressionStepDisplayEffectEnumMap[
          instance.displayEffectType],
      'progressTotal': instance.progressTotal,
      'rewardItems': instance.rewardItems,
      'icon': instance.icon,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DestinyProgressionStepDisplayEffectEnumMap = {
  DestinyProgressionStepDisplayEffect.None: 0,
  DestinyProgressionStepDisplayEffect.Character: 1,
  DestinyProgressionStepDisplayEffect.Item: 2,
  DestinyProgressionStepDisplayEffect.ProtectedInvalidEnumValue: 999999999,
};
