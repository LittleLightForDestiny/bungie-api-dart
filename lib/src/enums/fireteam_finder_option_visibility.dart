import 'package:json_annotation/json_annotation.dart';

enum FireteamFinderOptionVisibility {
  ///Always = 0
  @JsonValue(0)
  Always,
  ///ShowWhenChangedFromDefault = 1
  @JsonValue(1)
  ShowWhenChangedFromDefault,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamFinderOptionVisibilityExtension on FireteamFinderOptionVisibility{
  int? get value {
    if (_$FireteamFinderOptionVisibilityEnumMap.containsKey(this)){
      return _$FireteamFinderOptionVisibilityEnumMap[this];
    }
    return null;
  }
}

FireteamFinderOptionVisibility? decodeFireteamFinderOptionVisibility (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamFinderOptionVisibilityValueMap.containsKey(value)){
    return _$FireteamFinderOptionVisibilityValueMap[value];
  }

  return FireteamFinderOptionVisibility.ProtectedInvalidEnumValue;
}

int? encodeFireteamFinderOptionVisibility (FireteamFinderOptionVisibility? value) {
  return value?.value;
}

const Map<FireteamFinderOptionVisibility, int> _$FireteamFinderOptionVisibilityEnumMap = <FireteamFinderOptionVisibility, int>{
    FireteamFinderOptionVisibility.Always:0,
    FireteamFinderOptionVisibility.ShowWhenChangedFromDefault:1,
};
const Map<int, FireteamFinderOptionVisibility> _$FireteamFinderOptionVisibilityValueMap = <int, FireteamFinderOptionVisibility>{
    0:FireteamFinderOptionVisibility.Always,
    1:FireteamFinderOptionVisibility.ShowWhenChangedFromDefault,
};