import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityTreeType {
  ///FireteamFinder = 0
  @JsonValue(0)
  FireteamFinder,
  ///Curator = 1
  @JsonValue(1)
  Curator,
  ///EventHome = 2
  @JsonValue(2)
  EventHome,
  ///SeasonHome = 3
  @JsonValue(3)
  SeasonHome,
  ///Count = 4
  @JsonValue(4)
  Count,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityTreeTypeExtension on DestinyActivityTreeType{
  int? get value {
    if (_$DestinyActivityTreeTypeEnumMap.containsKey(this)){
      return _$DestinyActivityTreeTypeEnumMap[this];
    }
    return null;
  }
}

DestinyActivityTreeType? decodeDestinyActivityTreeType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityTreeTypeValueMap.containsKey(value)){
    return _$DestinyActivityTreeTypeValueMap[value];
  }

  return DestinyActivityTreeType.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityTreeType (DestinyActivityTreeType? value) {
  return value?.value;
}

const Map<DestinyActivityTreeType, int> _$DestinyActivityTreeTypeEnumMap = <DestinyActivityTreeType, int>{
    DestinyActivityTreeType.FireteamFinder:0,
    DestinyActivityTreeType.Curator:1,
    DestinyActivityTreeType.EventHome:2,
    DestinyActivityTreeType.SeasonHome:3,
    DestinyActivityTreeType.Count:4,
};
const Map<int, DestinyActivityTreeType> _$DestinyActivityTreeTypeValueMap = <int, DestinyActivityTreeType>{
    0:DestinyActivityTreeType.FireteamFinder,
    1:DestinyActivityTreeType.Curator,
    2:DestinyActivityTreeType.EventHome,
    3:DestinyActivityTreeType.SeasonHome,
    4:DestinyActivityTreeType.Count,
};