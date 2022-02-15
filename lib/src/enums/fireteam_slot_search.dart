import 'package:json_annotation/json_annotation.dart';

enum FireteamSlotSearch {
  ///NoSlotRestriction = 0
  @JsonValue(0)
  NoSlotRestriction,
  ///HasOpenPlayerSlots = 1
  @JsonValue(1)
  HasOpenPlayerSlots,
  ///HasOpenPlayerOrAltSlots = 2
  @JsonValue(2)
  HasOpenPlayerOrAltSlots,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamSlotSearchExtension on FireteamSlotSearch{
  int? get value {
    if (_$FireteamSlotSearchEnumMap.containsKey(this)){
      return _$FireteamSlotSearchEnumMap[this];
    }
    return null;
  }
}

FireteamSlotSearch? decodeFireteamSlotSearch (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamSlotSearchValueMap.containsKey(value)){
    return _$FireteamSlotSearchValueMap[value];
  }

  return FireteamSlotSearch.ProtectedInvalidEnumValue;
}

int? encodeFireteamSlotSearch (FireteamSlotSearch? value) {
  return value?.value;
}

const Map<FireteamSlotSearch, int> _$FireteamSlotSearchEnumMap = <FireteamSlotSearch, int>{
    FireteamSlotSearch.NoSlotRestriction:0,
    FireteamSlotSearch.HasOpenPlayerSlots:1,
    FireteamSlotSearch.HasOpenPlayerOrAltSlots:2,
};
const Map<int, FireteamSlotSearch> _$FireteamSlotSearchValueMap = <int, FireteamSlotSearch>{
    0:FireteamSlotSearch.NoSlotRestriction,
    1:FireteamSlotSearch.HasOpenPlayerSlots,
    2:FireteamSlotSearch.HasOpenPlayerOrAltSlots,
};