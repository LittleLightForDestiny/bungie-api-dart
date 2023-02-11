// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_instance_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInstanceComponent _$DestinyItemInstanceComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyItemInstanceComponent()
      ..damageType = decodeDamageType(json['damageType'])
      ..damageTypeHash = json['damageTypeHash'] as int?
      ..primaryStat = json['primaryStat'] == null
          ? null
          : DestinyStat.fromJson(json['primaryStat'] as Map<String, dynamic>)
      ..itemLevel = json['itemLevel'] as int?
      ..quality = json['quality'] as int?
      ..isEquipped = json['isEquipped'] as bool?
      ..canEquip = json['canEquip'] as bool?
      ..equipRequiredLevel = json['equipRequiredLevel'] as int?
      ..unlockHashesRequiredToEquip =
          (json['unlockHashesRequiredToEquip'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList()
      ..cannotEquipReason = json['cannotEquipReason'] == null
          ? null
          : EquipFailureReason.fromJson(json['cannotEquipReason'] as int)
      ..breakerType = json['breakerType'] as int?
      ..breakerTypeHash = json['breakerTypeHash'] as int?
      ..energy = json['energy'] == null
          ? null
          : DestinyItemInstanceEnergy.fromJson(
              json['energy'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyItemInstanceComponentToJson(
        DestinyItemInstanceComponent instance) =>
    <String, dynamic>{
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
    };
