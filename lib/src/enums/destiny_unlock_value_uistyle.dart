import 'package:json_annotation/json_annotation.dart';

enum DestinyUnlockValueUIStyle {
  ///Automatic = 0
  /// Generally, Automatic means &quot;Just show the number&quot;
  @JsonValue(0)
  Automatic,
  ///Fraction = 1
  /// Show the number as a fractional value. For this to make sense, the value being displayed should have a comparable upper bound, like the progress to the next level of a Progression.
  @JsonValue(1)
  Fraction,
  ///Checkbox = 2
  /// Show the number as a checkbox. 0 Will mean unchecked, any other value will mean checked.
  @JsonValue(2)
  Checkbox,
  ///Percentage = 3
  /// Show the number as a percentage. For this to make sense, the value being displayed should have a comparable upper bound, like the progress to the next level of a Progression.
  @JsonValue(3)
  Percentage,
  ///DateTime = 4
  /// Show the number as a date and time. The number will be the number of seconds since the Unix Epoch (January 1st, 1970 at midnight UTC). It&#39;ll be up to you to convert this into a date and time format understandable to the user in their time zone.
  @JsonValue(4)
  DateTime,
  ///FractionFloat = 5
  /// Show the number as a floating point value that represents a fraction, where 0 is min and 1 is max. For this to make sense, the value being displayed should have a comparable upper bound, like the progress to the next level of a Progression.
  @JsonValue(5)
  FractionFloat,
  ///Integer = 6
  /// Show the number as a straight-up integer.
  @JsonValue(6)
  Integer,
  ///TimeDuration = 7
  /// Show the number as a time duration. The value will be returned as seconds.
  @JsonValue(7)
  TimeDuration,
  ///Hidden = 8
  /// Don&#39;t bother showing the value at all, it&#39;s not easily human-interpretable, and used for some internal purpose.
  @JsonValue(8)
  Hidden,
  ///Multiplier = 9
  @JsonValue(9)
  Multiplier,
}

extension DestinyUnlockValueUIStyleExtension on DestinyUnlockValueUIStyle{
  int get value {
    switch(this){
      case DestinyUnlockValueUIStyle.Automatic:
        return 0;
      case DestinyUnlockValueUIStyle.Fraction:
        return 1;
      case DestinyUnlockValueUIStyle.Checkbox:
        return 2;
      case DestinyUnlockValueUIStyle.Percentage:
        return 3;
      case DestinyUnlockValueUIStyle.DateTime:
        return 4;
      case DestinyUnlockValueUIStyle.FractionFloat:
        return 5;
      case DestinyUnlockValueUIStyle.Integer:
        return 6;
      case DestinyUnlockValueUIStyle.TimeDuration:
        return 7;
      case DestinyUnlockValueUIStyle.Hidden:
        return 8;
      case DestinyUnlockValueUIStyle.Multiplier:
        return 9;
      default:
        return null;
    }
  }
}