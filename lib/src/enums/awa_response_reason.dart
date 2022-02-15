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
    if (_$AwaResponseReasonEnumMap.containsKey(this)){
      return _$AwaResponseReasonEnumMap[this];
    }
    return null;
  }
}

AwaResponseReason? decodeAwaResponseReason (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$AwaResponseReasonValueMap.containsKey(value)){
    return _$AwaResponseReasonValueMap[value];
  }

  return AwaResponseReason.ProtectedInvalidEnumValue;
}

int? encodeAwaResponseReason (AwaResponseReason? value) {
  return value?.value;
}

const Map<AwaResponseReason, int> _$AwaResponseReasonEnumMap = <AwaResponseReason, int>{
    AwaResponseReason.None:0,
    AwaResponseReason.Answered:1,
    AwaResponseReason.TimedOut:2,
    AwaResponseReason.Replaced:3,
};
const Map<int, AwaResponseReason> _$AwaResponseReasonValueMap = <int, AwaResponseReason>{
    0:AwaResponseReason.None,
    1:AwaResponseReason.Answered,
    2:AwaResponseReason.TimedOut,
    3:AwaResponseReason.Replaced,
};