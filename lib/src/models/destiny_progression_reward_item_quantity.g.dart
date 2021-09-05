// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reward_item_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionRewardItemQuantity
    _$DestinyProgressionRewardItemQuantityFromJson(Map<String, dynamic> json) {
  return DestinyProgressionRewardItemQuantity()
    ..rewardedAtProgressionLevel = json['rewardedAtProgressionLevel'] as int?
    ..acquisitionBehavior = _$enumDecodeNullable(
        _$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap,
        json['acquisitionBehavior'],
        unknownValue: DestinyProgressionRewardItemAcquisitionBehavior
            .ProtectedInvalidEnumValue)
    ..uiDisplayStyle = json['uiDisplayStyle'] as String?
    ..claimUnlockDisplayStrings =
        (json['claimUnlockDisplayStrings'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList()
    ..itemHash = json['itemHash'] as int?
    ..itemInstanceId = json['itemInstanceId'] as String?
    ..quantity = json['quantity'] as int?
    ..hasConditionalVisibility = json['hasConditionalVisibility'] as bool?;
}

Map<String, dynamic> _$DestinyProgressionRewardItemQuantityToJson(
        DestinyProgressionRewardItemQuantity instance) =>
    <String, dynamic>{
      'rewardedAtProgressionLevel': instance.rewardedAtProgressionLevel,
      'acquisitionBehavior':
          _$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap[
              instance.acquisitionBehavior],
      'uiDisplayStyle': instance.uiDisplayStyle,
      'claimUnlockDisplayStrings': instance.claimUnlockDisplayStrings,
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'hasConditionalVisibility': instance.hasConditionalVisibility,
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

const _$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap = {
  DestinyProgressionRewardItemAcquisitionBehavior.Instant: 0,
  DestinyProgressionRewardItemAcquisitionBehavior.PlayerClaimRequired: 1,
  DestinyProgressionRewardItemAcquisitionBehavior.ProtectedInvalidEnumValue:
      999999999,
};
