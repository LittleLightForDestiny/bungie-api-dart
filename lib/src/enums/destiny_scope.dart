import 'package:json_annotation/json_annotation.dart';

enum DestinyScope {
  ///Profile = 0
  @JsonValue(0)
  Profile,
  ///Character = 1
  @JsonValue(1)
  Character,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyScopeExtension on DestinyScope{
  int? get value {
    if (_$DestinyScopeEnumMap.containsKey(this)){
      return _$DestinyScopeEnumMap[this];
    }
    return null;
  }
}

DestinyScope? decodeDestinyScope (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyScopeValueMap.containsKey(value)){
    return _$DestinyScopeValueMap[value];
  }

  return DestinyScope.ProtectedInvalidEnumValue;
}

int? encodeDestinyScope (DestinyScope? value) {
  return value?.value;
}

const Map<DestinyScope, int> _$DestinyScopeEnumMap = <DestinyScope, int>{
    DestinyScope.Profile:0,
    DestinyScope.Character:1,
};
const Map<int, DestinyScope> _$DestinyScopeValueMap = <int, DestinyScope>{
    0:DestinyScope.Profile,
    1:DestinyScope.Character,
};