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
    switch(this){
      case UnitType.None:
        return 0;
      case UnitType.Count:
        return 1;
      case UnitType.PerGame:
        return 2;
      case UnitType.Seconds:
        return 3;
      case UnitType.Points:
        return 4;
      case UnitType.Team:
        return 5;
      case UnitType.Distance:
        return 6;
      case UnitType.Percent:
        return 7;
      case UnitType.Ratio:
        return 8;
      case UnitType.Boolean:
        return 9;
      case UnitType.WeaponType:
        return 10;
      case UnitType.Standing:
        return 11;
      case UnitType.Milliseconds:
        return 12;
      case UnitType.CompletionReason:
        return 13;
      default:
        return null;
    }
  }
}