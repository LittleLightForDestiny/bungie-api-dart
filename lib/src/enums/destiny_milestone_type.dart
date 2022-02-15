import 'package:json_annotation/json_annotation.dart';

enum DestinyMilestoneType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Tutorial = 1
  /// One-time milestones that are specifically oriented toward teaching players about new mechanics and gameplay modes.
  @JsonValue(1)
  Tutorial,
  ///OneTime = 2
  /// Milestones that, once completed a single time, can never be repeated.
  @JsonValue(2)
  OneTime,
  ///Weekly = 3
  /// Milestones that repeat&#x2F;reset on a weekly basis. They need not all reset on the same day or time, but do need to reset weekly to qualify for this type.
  @JsonValue(3)
  Weekly,
  ///Daily = 4
  /// Milestones that repeat or reset on a daily basis.
  @JsonValue(4)
  Daily,
  ///Special = 5
  /// Special indicates that the event is not on a daily&#x2F;weekly cadence, but does occur more than once. For instance, Iron Banner in Destiny 1 or the Dawning were examples of what could be termed &quot;Special&quot; events.
  @JsonValue(5)
  Special,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyMilestoneTypeExtension on DestinyMilestoneType{
  int? get value {
    if (_$DestinyMilestoneTypeEnumMap.containsKey(this)){
      return _$DestinyMilestoneTypeEnumMap[this];
    }
    return null;
  }
}

DestinyMilestoneType? decodeDestinyMilestoneType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyMilestoneTypeValueMap.containsKey(value)){
    return _$DestinyMilestoneTypeValueMap[value];
  }

  return DestinyMilestoneType.ProtectedInvalidEnumValue;
}

int? encodeDestinyMilestoneType (DestinyMilestoneType? value) {
  return value?.value;
}

const Map<DestinyMilestoneType, int> _$DestinyMilestoneTypeEnumMap = <DestinyMilestoneType, int>{
    DestinyMilestoneType.Unknown:0,
    DestinyMilestoneType.Tutorial:1,
    DestinyMilestoneType.OneTime:2,
    DestinyMilestoneType.Weekly:3,
    DestinyMilestoneType.Daily:4,
    DestinyMilestoneType.Special:5,
};
const Map<int, DestinyMilestoneType> _$DestinyMilestoneTypeValueMap = <int, DestinyMilestoneType>{
    0:DestinyMilestoneType.Unknown,
    1:DestinyMilestoneType.Tutorial,
    2:DestinyMilestoneType.OneTime,
    3:DestinyMilestoneType.Weekly,
    4:DestinyMilestoneType.Daily,
    5:DestinyMilestoneType.Special,
};