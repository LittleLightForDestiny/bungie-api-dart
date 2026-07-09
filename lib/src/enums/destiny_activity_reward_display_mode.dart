import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityRewardDisplayMode {
  ///Aggregate = 0
  @JsonValue(0)
  Aggregate,
  ///PickFirst = 1
  @JsonValue(1)
  PickFirst,
  ///Count = 2
  @JsonValue(2)
  Count,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityRewardDisplayModeExtension on DestinyActivityRewardDisplayMode{
  int? get value {
    if (_$DestinyActivityRewardDisplayModeEnumMap.containsKey(this)){
      return _$DestinyActivityRewardDisplayModeEnumMap[this];
    }
    return null;
  }
}

DestinyActivityRewardDisplayMode? decodeDestinyActivityRewardDisplayMode (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityRewardDisplayModeValueMap.containsKey(value)){
    return _$DestinyActivityRewardDisplayModeValueMap[value];
  }

  return DestinyActivityRewardDisplayMode.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityRewardDisplayMode (DestinyActivityRewardDisplayMode? value) {
  return value?.value;
}

const Map<DestinyActivityRewardDisplayMode, int> _$DestinyActivityRewardDisplayModeEnumMap = <DestinyActivityRewardDisplayMode, int>{
    DestinyActivityRewardDisplayMode.Aggregate:0,
    DestinyActivityRewardDisplayMode.PickFirst:1,
    DestinyActivityRewardDisplayMode.Count:2,
};
const Map<int, DestinyActivityRewardDisplayMode> _$DestinyActivityRewardDisplayModeValueMap = <int, DestinyActivityRewardDisplayMode>{
    0:DestinyActivityRewardDisplayMode.Aggregate,
    1:DestinyActivityRewardDisplayMode.PickFirst,
    2:DestinyActivityRewardDisplayMode.Count,
};