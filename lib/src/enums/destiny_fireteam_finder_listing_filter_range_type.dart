import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderListingFilterRangeType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
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

extension DestinyFireteamFinderListingFilterRangeTypeExtension on DestinyFireteamFinderListingFilterRangeType{
  int? get value {
    if (_$DestinyFireteamFinderListingFilterRangeTypeEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderListingFilterRangeTypeEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderListingFilterRangeType? decodeDestinyFireteamFinderListingFilterRangeType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderListingFilterRangeTypeValueMap.containsKey(value)){
    return _$DestinyFireteamFinderListingFilterRangeTypeValueMap[value];
  }

  return DestinyFireteamFinderListingFilterRangeType.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderListingFilterRangeType (DestinyFireteamFinderListingFilterRangeType? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderListingFilterRangeType, int> _$DestinyFireteamFinderListingFilterRangeTypeEnumMap = <DestinyFireteamFinderListingFilterRangeType, int>{
    DestinyFireteamFinderListingFilterRangeType.Unknown:0,
    DestinyFireteamFinderListingFilterRangeType.All:1,
    DestinyFireteamFinderListingFilterRangeType.Any:2,
    DestinyFireteamFinderListingFilterRangeType.InRangeInclusive:3,
    DestinyFireteamFinderListingFilterRangeType.InRangeExclusive:4,
    DestinyFireteamFinderListingFilterRangeType.GreaterThan:5,
    DestinyFireteamFinderListingFilterRangeType.GreaterThanOrEqualTo:6,
    DestinyFireteamFinderListingFilterRangeType.LessThan:7,
    DestinyFireteamFinderListingFilterRangeType.LessThanOrEqualTo:8,
};
const Map<int, DestinyFireteamFinderListingFilterRangeType> _$DestinyFireteamFinderListingFilterRangeTypeValueMap = <int, DestinyFireteamFinderListingFilterRangeType>{
    0:DestinyFireteamFinderListingFilterRangeType.Unknown,
    1:DestinyFireteamFinderListingFilterRangeType.All,
    2:DestinyFireteamFinderListingFilterRangeType.Any,
    3:DestinyFireteamFinderListingFilterRangeType.InRangeInclusive,
    4:DestinyFireteamFinderListingFilterRangeType.InRangeExclusive,
    5:DestinyFireteamFinderListingFilterRangeType.GreaterThan,
    6:DestinyFireteamFinderListingFilterRangeType.GreaterThanOrEqualTo,
    7:DestinyFireteamFinderListingFilterRangeType.LessThan,
    8:DestinyFireteamFinderListingFilterRangeType.LessThanOrEqualTo,
};