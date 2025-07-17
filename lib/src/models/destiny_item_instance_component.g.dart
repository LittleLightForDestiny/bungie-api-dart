// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_instance_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInstanceComponent _$DestinyItemInstanceComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemInstanceComponent()
      ..damageType = decodeDamageType(json['damageType'])
      ..damageTypeHash = (json['damageTypeHash'] as num?)?.toInt()
      ..primaryStat =
          json['primaryStat'] == null
              ? null
              : DestinyStat.fromJson(
                json['primaryStat'] as Map<String, dynamic>,
              )
      ..itemLevel = (json['itemLevel'] as num?)?.toInt()
      ..quality = (json['quality'] as num?)?.toInt()
      ..isEquipped = json['isEquipped'] as bool?
      ..canEquip = json['canEquip'] as bool?
      ..equipRequiredLevel = (json['equipRequiredLevel'] as num?)?.toInt()
      ..unlockHashesRequiredToEquip =
          (json['unlockHashesRequiredToEquip'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..cannotEquipReason =
          json['cannotEquipReason'] == null
              ? null
              : EquipFailureReason.fromJson(
                (json['cannotEquipReason'] as num).toInt(),
              )
      ..breakerType = (json['breakerType'] as num?)?.toInt()
      ..breakerTypeHash = (json['breakerTypeHash'] as num?)?.toInt()
      ..energy =
          json['energy'] == null
              ? null
              : DestinyItemInstanceEnergy.fromJson(
                json['energy'] as Map<String, dynamic>,
              )
      ..gearTier = (json['gearTier'] as num?)?.toInt();

Map<String, dynamic> _$DestinyItemInstanceComponentToJson(
  DestinyItemInstanceComponent instance,
) => <String, dynamic>{
  'damageType': encodeDamageType(instance.damageType),
  'damageTypeHash': instance.damageTypeHash,
  'primaryStat': instance.primaryStat?.toJson(),
  'itemLevel': instance.itemLevel,
  'quality': instance.quality,
  'isEquipped': instance.isEquipped,
  'canEquip': instance.canEquip,
  'equipRequiredLevel': instance.equipRequiredLevel,
  'unlockHashesRequiredToEquip': instance.unlockHashesRequiredToEquip,
  'cannotEquipReason': instance.cannotEquipReason?.toJson(),
  'breakerType': instance.breakerType,
  'breakerTypeHash': instance.breakerTypeHash,
  'energy': instance.energy?.toJson(),
  'gearTier': instance.gearTier,
};
