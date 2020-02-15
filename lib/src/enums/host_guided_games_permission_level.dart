import 'package:json_annotation/json_annotation.dart';

enum HostGuidedGamesPermissionLevel {
  ///None = 0
  @JsonValue(0)
  None,
  ///Beginner = 1
  @JsonValue(1)
  Beginner,
  ///Member = 2
  @JsonValue(2)
  Member,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension HostGuidedGamesPermissionLevelExtension on HostGuidedGamesPermissionLevel{
  int get value {
    switch(this){
      case HostGuidedGamesPermissionLevel.None:
        return 0;
      case HostGuidedGamesPermissionLevel.Beginner:
        return 1;
      case HostGuidedGamesPermissionLevel.Member:
        return 2;
      default:
        return null;
    }
  }
}