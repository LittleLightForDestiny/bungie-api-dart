import 'package:json_annotation/json_annotation.dart';

enum DestinyGatingScope {
  ///None = 0
  @JsonValue(0)
  None,
  ///Global = 1
  @JsonValue(1)
  Global,
  ///Clan = 2
  @JsonValue(2)
  Clan,
  ///Profile = 3
  @JsonValue(3)
  Profile,
  ///Character = 4
  @JsonValue(4)
  Character,
  ///Item = 5
  @JsonValue(5)
  Item,
  ///AssumedWorstCase = 6
  @JsonValue(6)
  AssumedWorstCase,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyGatingScopeExtension on DestinyGatingScope{
  int? get value {
    if (_$DestinyGatingScopeEnumMap.containsKey(this)){
      return _$DestinyGatingScopeEnumMap[this];
    }
    return null;
  }
}

DestinyGatingScope? decodeDestinyGatingScope (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyGatingScopeValueMap.containsKey(value)){
    return _$DestinyGatingScopeValueMap[value];
  }

  return DestinyGatingScope.ProtectedInvalidEnumValue;
}

int? encodeDestinyGatingScope (DestinyGatingScope? value) {
  return value?.value;
}

const Map<DestinyGatingScope, int> _$DestinyGatingScopeEnumMap = <DestinyGatingScope, int>{
    DestinyGatingScope.None:0,
    DestinyGatingScope.Global:1,
    DestinyGatingScope.Clan:2,
    DestinyGatingScope.Profile:3,
    DestinyGatingScope.Character:4,
    DestinyGatingScope.Item:5,
    DestinyGatingScope.AssumedWorstCase:6,
};
const Map<int, DestinyGatingScope> _$DestinyGatingScopeValueMap = <int, DestinyGatingScope>{
    0:DestinyGatingScope.None,
    1:DestinyGatingScope.Global,
    2:DestinyGatingScope.Clan,
    3:DestinyGatingScope.Profile,
    4:DestinyGatingScope.Character,
    5:DestinyGatingScope.Item,
    6:DestinyGatingScope.AssumedWorstCase,
};