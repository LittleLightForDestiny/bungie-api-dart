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
    switch(this){
      case DestinyMilestoneType.Unknown:
        return 0;
      case DestinyMilestoneType.Tutorial:
        return 1;
      case DestinyMilestoneType.OneTime:
        return 2;
      case DestinyMilestoneType.Weekly:
        return 3;
      case DestinyMilestoneType.Daily:
        return 4;
      case DestinyMilestoneType.Special:
        return 5;
      default:
        return null;
    }
  }
}