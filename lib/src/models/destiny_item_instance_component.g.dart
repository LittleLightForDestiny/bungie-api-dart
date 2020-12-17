// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_instance_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInstanceComponent _$DestinyItemInstanceComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyItemInstanceComponent()
    ..damageType = _$enumDecodeNullable(_$DamageTypeEnumMap, json['damageType'],
        unknownValue: DamageType.ProtectedInvalidEnumValue)
    ..damageTypeHash = json['damageTypeHash'] as int
    ..primaryStat = json['primaryStat'] == null
        ? null
        : DestinyStat.fromJson(json['primaryStat'] as Map<String, dynamic>)
    ..itemLevel = json['itemLevel'] as int
    ..quality = json['quality'] as int
    ..isEquipped = json['isEquipped'] as bool
    ..canEquip = json['canEquip'] as bool
    ..equipRequiredLevel = json['equipRequiredLevel'] as int
    ..unlockHashesRequiredToEquip =
        (json['unlockHashesRequiredToEquip'] as List)
            ?.map((e) => e as int)
            ?.toList()
    ..cannotEquipReason = json['cannotEquipReason'] == null
        ? null
        : EquipFailureReason.fromJson(json['cannotEquipReason'] as int)
    ..breakerType = json['breakerType'] as int
    ..breakerTypeHash = json['breakerTypeHash'] as int
    ..energy = json['energy'] == null
        ? null
        : DestinyItemInstanceEnergy.fromJson(
            json['energy'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyItemInstanceComponentToJson(
        DestinyItemInstanceComponent instance) =>
    <String, dynamic>{
      'damageType': _$DamageTypeEnumMap[instance.damageType],
      'damageTypeHash': instance.damageTypeHash,
      'primaryStat': instance.primaryStat,
      'itemLevel': instance.itemLevel,
      'quality': instance.quality,
      'isEquipped': instance.isEquipped,
      'canEquip': instance.canEquip,
      'equipRequiredLevel': instance.equipRequiredLevel,
      'unlockHashesRequiredToEquip': instance.unlockHashesRequiredToEquip,
      'cannotEquipReason': instance.cannotEquipReason,
      'breakerType': instance.breakerType,
      'breakerTypeHash': instance.breakerTypeHash,
      'energy': instance.energy,
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
  DamageType.Stasis: 6,
  DamageType.ProtectedInvalidEnumValue: 999999999,
};
