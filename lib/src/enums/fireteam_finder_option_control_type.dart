import 'package:json_annotation/json_annotation.dart';

enum FireteamFinderOptionControlType {
  ///None = 0
  @JsonValue(0)
  None,
  ///ValueCollection = 1
  @JsonValue(1)
  ValueCollection,
  ///RadioButton = 2
  @JsonValue(2)
  RadioButton,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamFinderOptionControlTypeExtension on FireteamFinderOptionControlType{
  int? get value {
    if (_$FireteamFinderOptionControlTypeEnumMap.containsKey(this)){
      return _$FireteamFinderOptionControlTypeEnumMap[this];
    }
    return null;
  }
}

FireteamFinderOptionControlType? decodeFireteamFinderOptionControlType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamFinderOptionControlTypeValueMap.containsKey(value)){
    return _$FireteamFinderOptionControlTypeValueMap[value];
  }

  return FireteamFinderOptionControlType.ProtectedInvalidEnumValue;
}

int? encodeFireteamFinderOptionControlType (FireteamFinderOptionControlType? value) {
  return value?.value;
}

const Map<FireteamFinderOptionControlType, int> _$FireteamFinderOptionControlTypeEnumMap = <FireteamFinderOptionControlType, int>{
    FireteamFinderOptionControlType.None:0,
    FireteamFinderOptionControlType.ValueCollection:1,
    FireteamFinderOptionControlType.RadioButton:2,
};
const Map<int, FireteamFinderOptionControlType> _$FireteamFinderOptionControlTypeValueMap = <int, FireteamFinderOptionControlType>{
    0:FireteamFinderOptionControlType.None,
    1:FireteamFinderOptionControlType.ValueCollection,
    2:FireteamFinderOptionControlType.RadioButton,
};