// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_sandbox_perk_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySandboxPerkDefinition _$DestinySandboxPerkDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinySandboxPerkDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..perkIdentifier = json['perkIdentifier'] as String
    ..isDisplayable = json['isDisplayable'] as bool
    ..damageType = _$enumDecodeNullable(_$DamageTypeEnumMap, json['damageType'],
        unknownValue: DamageType.None)
    ..damageTypeHash = json['damageTypeHash'] as int
    ..perkGroups = json['perkGroups'] == null
        ? null
        : DestinyTalentNodeStepGroups.fromJson(
            json['perkGroups'] as Map<String, dynamic>)
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinySandboxPerkDefinitionToJson(
        DestinySandboxPerkDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'perkIdentifier': instance.perkIdentifier,
      'isDisplayable': instance.isDisplayable,
      'damageType': _$DamageTypeEnumMap[instance.damageType],
      'damageTypeHash': instance.damageTypeHash,
      'perkGroups': instance.perkGroups,
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

const _$DamageTypeEnumMap = {
  DamageType.None: 0,
  DamageType.Kinetic: 1,
  DamageType.Arc: 2,
  DamageType.Thermal: 3,
  DamageType.Void: 4,
  DamageType.Raid: 5,
};
