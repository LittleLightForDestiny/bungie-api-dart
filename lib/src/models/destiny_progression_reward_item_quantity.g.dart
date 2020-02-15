// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reward_item_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionRewardItemQuantity
    _$DestinyProgressionRewardItemQuantityFromJson(Map<String, dynamic> json) {
  return DestinyProgressionRewardItemQuantity()
    ..rewardedAtProgressionLevel = json['rewardedAtProgressionLevel'] as int
    ..acquisitionBehavior = _$enumDecodeNullable(
        _$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap,
        json['acquisitionBehavior'],
        unknownValue: DestinyProgressionRewardItemAcquisitionBehavior
            .ProtectedInvalidEnumValue)
    ..uiDisplayStyle = json['uiDisplayStyle'] as String
    ..claimUnlockDisplayStrings = (json['claimUnlockDisplayStrings'] as List)
        ?.map((e) => e as String)
        ?.toList()
    ..itemHash = json['itemHash'] as int
    ..itemInstanceId = json['itemInstanceId'] as String
    ..quantity = json['quantity'] as int;
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

const _$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap = {
  DestinyProgressionRewardItemAcquisitionBehavior.Instant: 0,
  DestinyProgressionRewardItemAcquisitionBehavior.PlayerClaimRequired: 1,
  DestinyProgressionRewardItemAcquisitionBehavior.ProtectedInvalidEnumValue:
      999999999,
};
