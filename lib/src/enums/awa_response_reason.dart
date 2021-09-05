import 'package:json_annotation/json_annotation.dart';

enum AwaResponseReason {
  ///None = 0
  @JsonValue(0)
  None,
  ///Answered = 1
  /// User provided an answer
  @JsonValue(1)
  Answered,
  ///TimedOut = 2
  /// The HTTP request timed out, a new request may be made and an answer may still be provided.
  @JsonValue(2)
  TimedOut,
  ///Replaced = 3
  /// This request was replaced by another request.
  @JsonValue(3)
  Replaced,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension AwaResponseReasonExtension on AwaResponseReason{
  int? get value {
    switch(this){
      case AwaResponseReason.None:
        return 0;
      case AwaResponseReason.Answered:
        return 1;
      case AwaResponseReason.TimedOut:
        return 2;
      case AwaResponseReason.Replaced:
        return 3;
      default:
        return null;
    }
  }
}