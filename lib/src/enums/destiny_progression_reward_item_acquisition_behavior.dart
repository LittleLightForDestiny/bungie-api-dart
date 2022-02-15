import 'package:json_annotation/json_annotation.dart';

enum DestinyProgressionRewardItemAcquisitionBehavior {
  ///Instant = 0
  @JsonValue(0)
  Instant,
  ///PlayerClaimRequired = 1
  @JsonValue(1)
  PlayerClaimRequired,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyProgressionRewardItemAcquisitionBehaviorExtension on DestinyProgressionRewardItemAcquisitionBehavior{
  int? get value {
    if (_$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap.containsKey(this)){
      return _$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap[this];
    }
    return null;
  }
}

DestinyProgressionRewardItemAcquisitionBehavior? decodeDestinyProgressionRewardItemAcquisitionBehavior (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyProgressionRewardItemAcquisitionBehaviorValueMap.containsKey(value)){
    return _$DestinyProgressionRewardItemAcquisitionBehaviorValueMap[value];
  }

  return DestinyProgressionRewardItemAcquisitionBehavior.ProtectedInvalidEnumValue;
}

int? encodeDestinyProgressionRewardItemAcquisitionBehavior (DestinyProgressionRewardItemAcquisitionBehavior? value) {
  return value?.value;
}

const Map<DestinyProgressionRewardItemAcquisitionBehavior, int> _$DestinyProgressionRewardItemAcquisitionBehaviorEnumMap = <DestinyProgressionRewardItemAcquisitionBehavior, int>{
    DestinyProgressionRewardItemAcquisitionBehavior.Instant:0,
    DestinyProgressionRewardItemAcquisitionBehavior.PlayerClaimRequired:1,
};
const Map<int, DestinyProgressionRewardItemAcquisitionBehavior> _$DestinyProgressionRewardItemAcquisitionBehaviorValueMap = <int, DestinyProgressionRewardItemAcquisitionBehavior>{
    0:DestinyProgressionRewardItemAcquisitionBehavior.Instant,
    1:DestinyProgressionRewardItemAcquisitionBehavior.PlayerClaimRequired,
};