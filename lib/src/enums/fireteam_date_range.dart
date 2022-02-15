import 'package:json_annotation/json_annotation.dart';

enum FireteamDateRange {
  ///All = 0
  @JsonValue(0)
  All,
  ///Now = 1
  @JsonValue(1)
  Now,
  ///TwentyFourHours = 2
  @JsonValue(2)
  TwentyFourHours,
  ///FortyEightHours = 3
  @JsonValue(3)
  FortyEightHours,
  ///ThisWeek = 4
  @JsonValue(4)
  ThisWeek,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamDateRangeExtension on FireteamDateRange{
  int? get value {
    if (_$FireteamDateRangeEnumMap.containsKey(this)){
      return _$FireteamDateRangeEnumMap[this];
    }
    return null;
  }
}

FireteamDateRange? decodeFireteamDateRange (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamDateRangeValueMap.containsKey(value)){
    return _$FireteamDateRangeValueMap[value];
  }

  return FireteamDateRange.ProtectedInvalidEnumValue;
}

int? encodeFireteamDateRange (FireteamDateRange? value) {
  return value?.value;
}

const Map<FireteamDateRange, int> _$FireteamDateRangeEnumMap = <FireteamDateRange, int>{
    FireteamDateRange.All:0,
    FireteamDateRange.Now:1,
    FireteamDateRange.TwentyFourHours:2,
    FireteamDateRange.FortyEightHours:3,
    FireteamDateRange.ThisWeek:4,
};
const Map<int, FireteamDateRange> _$FireteamDateRangeValueMap = <int, FireteamDateRange>{
    0:FireteamDateRange.All,
    1:FireteamDateRange.Now,
    2:FireteamDateRange.TwentyFourHours,
    3:FireteamDateRange.FortyEightHours,
    4:FireteamDateRange.ThisWeek,
};