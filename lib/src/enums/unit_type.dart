import 'package:json_annotation/json_annotation.dart';

enum UnitType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Count = 1
  /// Indicates the statistic is a simple count of something.
  @JsonValue(1)
  Count,
  ///PerGame = 2
  /// Indicates the statistic is a per game average.
  @JsonValue(2)
  PerGame,
  ///Seconds = 3
  /// Indicates the number of seconds
  @JsonValue(3)
  Seconds,
  ///Points = 4
  /// Indicates the number of points earned
  @JsonValue(4)
  Points,
  ///Team = 5
  /// Values represents a team ID
  @JsonValue(5)
  Team,
  ///Distance = 6
  /// Values represents a distance (units to-be-determined)
  @JsonValue(6)
  Distance,
  ///Percent = 7
  /// Ratio represented as a whole value from 0 to 100.
  @JsonValue(7)
  Percent,
  ///Ratio = 8
  /// Ratio of something, shown with decimal places
  @JsonValue(8)
  Ratio,
  ///Boolean = 9
  /// True or false
  @JsonValue(9)
  Boolean,
  ///WeaponType = 10
  /// The stat is actually a weapon type.
  @JsonValue(10)
  WeaponType,
  ///Standing = 11
  /// Indicates victory, defeat, or something in between.
  @JsonValue(11)
  Standing,
  ///Milliseconds = 12
  /// Number of milliseconds some event spanned. For example, race time, or lap time.
  @JsonValue(12)
  Milliseconds,
  ///CompletionReason = 13
  /// The value is a enumeration of the Completion Reason type.
  @JsonValue(13)
  CompletionReason,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension UnitTypeExtension on UnitType{
  int? get value {
    if (_$UnitTypeEnumMap.containsKey(this)){
      return _$UnitTypeEnumMap[this];
    }
    return null;
  }
}

UnitType? decodeUnitType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$UnitTypeValueMap.containsKey(value)){
    return _$UnitTypeValueMap[value];
  }

  return UnitType.ProtectedInvalidEnumValue;
}

int? encodeUnitType (UnitType? value) {
  return value?.value;
}

const Map<UnitType, int> _$UnitTypeEnumMap = <UnitType, int>{
    UnitType.None:0,
    UnitType.Count:1,
    UnitType.PerGame:2,
    UnitType.Seconds:3,
    UnitType.Points:4,
    UnitType.Team:5,
    UnitType.Distance:6,
    UnitType.Percent:7,
    UnitType.Ratio:8,
    UnitType.Boolean:9,
    UnitType.WeaponType:10,
    UnitType.Standing:11,
    UnitType.Milliseconds:12,
    UnitType.CompletionReason:13,
};
const Map<int, UnitType> _$UnitTypeValueMap = <int, UnitType>{
    0:UnitType.None,
    1:UnitType.Count,
    2:UnitType.PerGame,
    3:UnitType.Seconds,
    4:UnitType.Points,
    5:UnitType.Team,
    6:UnitType.Distance,
    7:UnitType.Percent,
    8:UnitType.Ratio,
    9:UnitType.Boolean,
    10:UnitType.WeaponType,
    11:UnitType.Standing,
    12:UnitType.Milliseconds,
    13:UnitType.CompletionReason,
};