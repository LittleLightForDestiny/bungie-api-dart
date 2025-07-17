import 'package:json_annotation/json_annotation.dart';

enum FireteamFinderOptionSearchFilterType {
  ///None = 0
  @JsonValue(0)
  None,
  ///All = 1
  @JsonValue(1)
  All,
  ///Any = 2
  @JsonValue(2)
  Any,
  ///InRangeInclusive = 3
  @JsonValue(3)
  InRangeInclusive,
  ///InRangeExclusive = 4
  @JsonValue(4)
  InRangeExclusive,
  ///GreaterThan = 5
  @JsonValue(5)
  GreaterThan,
  ///GreaterThanOrEqualTo = 6
  @JsonValue(6)
  GreaterThanOrEqualTo,
  ///LessThan = 7
  @JsonValue(7)
  LessThan,
  ///LessThanOrEqualTo = 8
  @JsonValue(8)
  LessThanOrEqualTo,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamFinderOptionSearchFilterTypeExtension on FireteamFinderOptionSearchFilterType{
  int? get value {
    if (_$FireteamFinderOptionSearchFilterTypeEnumMap.containsKey(this)){
      return _$FireteamFinderOptionSearchFilterTypeEnumMap[this];
    }
    return null;
  }
}

FireteamFinderOptionSearchFilterType? decodeFireteamFinderOptionSearchFilterType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamFinderOptionSearchFilterTypeValueMap.containsKey(value)){
    return _$FireteamFinderOptionSearchFilterTypeValueMap[value];
  }

  return FireteamFinderOptionSearchFilterType.ProtectedInvalidEnumValue;
}

int? encodeFireteamFinderOptionSearchFilterType (FireteamFinderOptionSearchFilterType? value) {
  return value?.value;
}

const Map<FireteamFinderOptionSearchFilterType, int> _$FireteamFinderOptionSearchFilterTypeEnumMap = <FireteamFinderOptionSearchFilterType, int>{
    FireteamFinderOptionSearchFilterType.None:0,
    FireteamFinderOptionSearchFilterType.All:1,
    FireteamFinderOptionSearchFilterType.Any:2,
    FireteamFinderOptionSearchFilterType.InRangeInclusive:3,
    FireteamFinderOptionSearchFilterType.InRangeExclusive:4,
    FireteamFinderOptionSearchFilterType.GreaterThan:5,
    FireteamFinderOptionSearchFilterType.GreaterThanOrEqualTo:6,
    FireteamFinderOptionSearchFilterType.LessThan:7,
    FireteamFinderOptionSearchFilterType.LessThanOrEqualTo:8,
};
const Map<int, FireteamFinderOptionSearchFilterType> _$FireteamFinderOptionSearchFilterTypeValueMap = <int, FireteamFinderOptionSearchFilterType>{
    0:FireteamFinderOptionSearchFilterType.None,
    1:FireteamFinderOptionSearchFilterType.All,
    2:FireteamFinderOptionSearchFilterType.Any,
    3:FireteamFinderOptionSearchFilterType.InRangeInclusive,
    4:FireteamFinderOptionSearchFilterType.InRangeExclusive,
    5:FireteamFinderOptionSearchFilterType.GreaterThan,
    6:FireteamFinderOptionSearchFilterType.GreaterThanOrEqualTo,
    7:FireteamFinderOptionSearchFilterType.LessThan,
    8:FireteamFinderOptionSearchFilterType.LessThanOrEqualTo,
};