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
  /// Example: &quot;1.5x&quot;
  @JsonValue(9)
  Multiplier,
  ///GreenPips = 10
  /// Show the value as a series of green pips, like the wins in a Trials of Osiris score card.
  @JsonValue(10)
  GreenPips,
  ///RedPips = 11
  /// Show the value as a series of red pips, like the losses in a Trials of Osiris score card.
  @JsonValue(11)
  RedPips,
  ///ExplicitPercentage = 12
  /// Show the value as a percentage. For example: &quot;51%&quot; - Does no division, only appends &#39;%&#39;
  @JsonValue(12)
  ExplicitPercentage,
  ///RawFloat = 13
  /// Show the value as a floating-point number. For example: &quot;4.52&quot; NOTE: Passed along from Investment as whole number with last two digits as decimal values (452 -&gt; 4.52)
  @JsonValue(13)
  RawFloat,
  ///LevelAndReward = 14
  /// Show the value as a level and a reward.
  @JsonValue(14)
  LevelAndReward,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyUnlockValueUIStyleExtension on DestinyUnlockValueUIStyle{
  int? get value {
    if (_$DestinyUnlockValueUIStyleEnumMap.containsKey(this)){
      return _$DestinyUnlockValueUIStyleEnumMap[this];
    }
    return null;
  }
}

DestinyUnlockValueUIStyle? decodeDestinyUnlockValueUIStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyUnlockValueUIStyleValueMap.containsKey(value)){
    return _$DestinyUnlockValueUIStyleValueMap[value];
  }

  return DestinyUnlockValueUIStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyUnlockValueUIStyle (DestinyUnlockValueUIStyle? value) {
  return value?.value;
}

const Map<DestinyUnlockValueUIStyle, int> _$DestinyUnlockValueUIStyleEnumMap = <DestinyUnlockValueUIStyle, int>{
    DestinyUnlockValueUIStyle.Automatic:0,
    DestinyUnlockValueUIStyle.Fraction:1,
    DestinyUnlockValueUIStyle.Checkbox:2,
    DestinyUnlockValueUIStyle.Percentage:3,
    DestinyUnlockValueUIStyle.DateTime:4,
    DestinyUnlockValueUIStyle.FractionFloat:5,
    DestinyUnlockValueUIStyle.Integer:6,
    DestinyUnlockValueUIStyle.TimeDuration:7,
    DestinyUnlockValueUIStyle.Hidden:8,
    DestinyUnlockValueUIStyle.Multiplier:9,
    DestinyUnlockValueUIStyle.GreenPips:10,
    DestinyUnlockValueUIStyle.RedPips:11,
    DestinyUnlockValueUIStyle.ExplicitPercentage:12,
    DestinyUnlockValueUIStyle.RawFloat:13,
    DestinyUnlockValueUIStyle.LevelAndReward:14,
};
const Map<int, DestinyUnlockValueUIStyle> _$DestinyUnlockValueUIStyleValueMap = <int, DestinyUnlockValueUIStyle>{
    0:DestinyUnlockValueUIStyle.Automatic,
    1:DestinyUnlockValueUIStyle.Fraction,
    2:DestinyUnlockValueUIStyle.Checkbox,
    3:DestinyUnlockValueUIStyle.Percentage,
    4:DestinyUnlockValueUIStyle.DateTime,
    5:DestinyUnlockValueUIStyle.FractionFloat,
    6:DestinyUnlockValueUIStyle.Integer,
    7:DestinyUnlockValueUIStyle.TimeDuration,
    8:DestinyUnlockValueUIStyle.Hidden,
    9:DestinyUnlockValueUIStyle.Multiplier,
    10:DestinyUnlockValueUIStyle.GreenPips,
    11:DestinyUnlockValueUIStyle.RedPips,
    12:DestinyUnlockValueUIStyle.ExplicitPercentage,
    13:DestinyUnlockValueUIStyle.RawFloat,
    14:DestinyUnlockValueUIStyle.LevelAndReward,
};