import 'package:json_annotation/json_annotation.dart';

enum PresenceStatus {
  ///OfflineOrUnknown = 0
  @JsonValue(0)
  OfflineOrUnknown,
  ///Online = 1
  @JsonValue(1)
  Online,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension PresenceStatusExtension on PresenceStatus{
  int? get value {
    switch(this){
      case PresenceStatus.OfflineOrUnknown:
        return 0;
      case PresenceStatus.Online:
        return 1;
      default:
        return null;
    }
  }
}