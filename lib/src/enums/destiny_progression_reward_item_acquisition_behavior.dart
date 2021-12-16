import 'package:json_annotation/json_annotation.dart';

enum DestinyProgressionRewardItemAcquisitionBehavior {
  ///Instant = 0
  @JsonValue(0)
  Instant,
  ///PlayerClaimRequired = 1
  @JsonValue(1)
  PlayerClaimRequired,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyProgressionRewardItemAcquisitionBehaviorExtension on DestinyProgressionRewardItemAcquisitionBehavior{
  int? get value {
    switch(this){
      case DestinyProgressionRewardItemAcquisitionBehavior.Instant:
        return 0;
      case DestinyProgressionRewardItemAcquisitionBehavior.PlayerClaimRequired:
        return 1;
      default:
        return null;
    }
  }
}