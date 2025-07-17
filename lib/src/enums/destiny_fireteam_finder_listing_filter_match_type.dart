import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderListingFilterMatchType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///MustNot = 1
  @JsonValue(1)
  MustNot,
  ///Should = 2
  @JsonValue(2)
  Should,
  ///Filter = 3
  @JsonValue(3)
  Filter,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyFireteamFinderListingFilterMatchTypeExtension on DestinyFireteamFinderListingFilterMatchType{
  int? get value {
    if (_$DestinyFireteamFinderListingFilterMatchTypeEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderListingFilterMatchTypeEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderListingFilterMatchType? decodeDestinyFireteamFinderListingFilterMatchType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderListingFilterMatchTypeValueMap.containsKey(value)){
    return _$DestinyFireteamFinderListingFilterMatchTypeValueMap[value];
  }

  return DestinyFireteamFinderListingFilterMatchType.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderListingFilterMatchType (DestinyFireteamFinderListingFilterMatchType? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderListingFilterMatchType, int> _$DestinyFireteamFinderListingFilterMatchTypeEnumMap = <DestinyFireteamFinderListingFilterMatchType, int>{
    DestinyFireteamFinderListingFilterMatchType.Unknown:0,
    DestinyFireteamFinderListingFilterMatchType.MustNot:1,
    DestinyFireteamFinderListingFilterMatchType.Should:2,
    DestinyFireteamFinderListingFilterMatchType.Filter:3,
};
const Map<int, DestinyFireteamFinderListingFilterMatchType> _$DestinyFireteamFinderListingFilterMatchTypeValueMap = <int, DestinyFireteamFinderListingFilterMatchType>{
    0:DestinyFireteamFinderListingFilterMatchType.Unknown,
    1:DestinyFireteamFinderListingFilterMatchType.MustNot,
    2:DestinyFireteamFinderListingFilterMatchType.Should,
    3:DestinyFireteamFinderListingFilterMatchType.Filter,
};