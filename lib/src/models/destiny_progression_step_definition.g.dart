// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_step_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionStepDefinition _$DestinyProgressionStepDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyProgressionStepDefinition()
    ..stepName = json['stepName'] as String?
    ..displayEffectType = _$enumDecodeNullable(
        _$DestinyProgressionStepDisplayEffectEnumMap, json['displayEffectType'],
        unknownValue:
            DestinyProgressionStepDisplayEffect.ProtectedInvalidEnumValue)
    ..progressTotal = json['progressTotal'] as int?
    ..rewardItems = (json['rewardItems'] as List<dynamic>?)
        ?.map((e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        .toList()
    ..icon = json['icon'] as String?;
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

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$DestinyProgressionStepDisplayEffectEnumMap = {
  DestinyProgressionStepDisplayEffect.None: 0,
  DestinyProgressionStepDisplayEffect.Character: 1,
  DestinyProgressionStepDisplayEffect.Item: 2,
  DestinyProgressionStepDisplayEffect.ProtectedInvalidEnumValue: 999999999,
};
