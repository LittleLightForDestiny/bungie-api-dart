// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionDefinition _$DestinyProgressionDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyProgressionDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyProgressionDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..scope = _$enumDecodeNullable(
        _$DestinyProgressionScopeEnumMap, json['scope'],
        unknownValue: DestinyProgressionScope.ProtectedInvalidEnumValue)
    ..repeatLastStep = json['repeatLastStep'] as bool
    ..source = json['source'] as String
    ..steps = (json['steps'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyProgressionStepDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..visible = json['visible'] as bool
    ..factionHash = json['factionHash'] as int
    ..color = json['color'] == null
        ? null
        : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
    ..rankIcon = json['rankIcon'] as String
    ..rewardItems = (json['rewardItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyProgressionRewardItemQuantity.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyProgressionDefinitionToJson(
        DestinyProgressionDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'scope': _$DestinyProgressionScopeEnumMap[instance.scope],
      'repeatLastStep': instance.repeatLastStep,
      'source': instance.source,
      'steps': instance.steps,
      'visible': instance.visible,
      'factionHash': instance.factionHash,
      'color': instance.color,
      'rankIcon': instance.rankIcon,
      'rewardItems': instance.rewardItems,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
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

const _$DestinyProgressionScopeEnumMap = {
  DestinyProgressionScope.Account: 0,
  DestinyProgressionScope.Character: 1,
  DestinyProgressionScope.Clan: 2,
  DestinyProgressionScope.Item: 3,
  DestinyProgressionScope.ImplicitFromEquipment: 4,
  DestinyProgressionScope.Mapped: 5,
  DestinyProgressionScope.MappedAggregate: 6,
  DestinyProgressionScope.MappedStat: 7,
  DestinyProgressionScope.MappedUnlockValue: 8,
  DestinyProgressionScope.ProtectedInvalidEnumValue: 999999999,
};
