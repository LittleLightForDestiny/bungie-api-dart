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
    switch(this){
      case FireteamDateRange.All:
        return 0;
      case FireteamDateRange.Now:
        return 1;
      case FireteamDateRange.TwentyFourHours:
        return 2;
      case FireteamDateRange.FortyEightHours:
        return 3;
      case FireteamDateRange.ThisWeek:
        return 4;
      default:
        return null;
    }
  }
}