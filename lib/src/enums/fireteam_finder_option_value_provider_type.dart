import 'package:json_annotation/json_annotation.dart';

enum FireteamFinderOptionValueProviderType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Values = 1
  @JsonValue(1)
  Values,
  ///PlayerCount = 2
  @JsonValue(2)
  PlayerCount,
  ///FireteamFinderLabels = 3
  @JsonValue(3)
  FireteamFinderLabels,
  ///FireteamFinderActivityGraph = 4
  @JsonValue(4)
  FireteamFinderActivityGraph,
  ///FireteamFinderUIActivityTree = 5
  @JsonValue(5)
  FireteamFinderUIActivityTree,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamFinderOptionValueProviderTypeExtension on FireteamFinderOptionValueProviderType{
  int? get value {
    if (_$FireteamFinderOptionValueProviderTypeEnumMap.containsKey(this)){
      return _$FireteamFinderOptionValueProviderTypeEnumMap[this];
    }
    return null;
  }
}

FireteamFinderOptionValueProviderType? decodeFireteamFinderOptionValueProviderType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamFinderOptionValueProviderTypeValueMap.containsKey(value)){
    return _$FireteamFinderOptionValueProviderTypeValueMap[value];
  }

  return FireteamFinderOptionValueProviderType.ProtectedInvalidEnumValue;
}

int? encodeFireteamFinderOptionValueProviderType (FireteamFinderOptionValueProviderType? value) {
  return value?.value;
}

const Map<FireteamFinderOptionValueProviderType, int> _$FireteamFinderOptionValueProviderTypeEnumMap = <FireteamFinderOptionValueProviderType, int>{
    FireteamFinderOptionValueProviderType.None:0,
    FireteamFinderOptionValueProviderType.Values:1,
    FireteamFinderOptionValueProviderType.PlayerCount:2,
    FireteamFinderOptionValueProviderType.FireteamFinderLabels:3,
    FireteamFinderOptionValueProviderType.FireteamFinderActivityGraph:4,
    FireteamFinderOptionValueProviderType.FireteamFinderUIActivityTree:5,
};
const Map<int, FireteamFinderOptionValueProviderType> _$FireteamFinderOptionValueProviderTypeValueMap = <int, FireteamFinderOptionValueProviderType>{
    0:FireteamFinderOptionValueProviderType.None,
    1:FireteamFinderOptionValueProviderType.Values,
    2:FireteamFinderOptionValueProviderType.PlayerCount,
    3:FireteamFinderOptionValueProviderType.FireteamFinderLabels,
    4:FireteamFinderOptionValueProviderType.FireteamFinderActivityGraph,
    5:FireteamFinderOptionValueProviderType.FireteamFinderUIActivityTree,
};