import 'package:json_annotation/json_annotation.dart';

enum DestinyObjectiveGrantStyle {
  ///WhenIncomplete = 0
  @JsonValue(0)
  WhenIncomplete,
  ///WhenComplete = 1
  @JsonValue(1)
  WhenComplete,
  ///Always = 2
  @JsonValue(2)
  Always,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyObjectiveGrantStyleExtension on DestinyObjectiveGrantStyle{
  int? get value {
    switch(this){
      case DestinyObjectiveGrantStyle.WhenIncomplete:
        return 0;
      case DestinyObjectiveGrantStyle.WhenComplete:
        return 1;
      case DestinyObjectiveGrantStyle.Always:
        return 2;
      default:
        return null;
    }
  }
}