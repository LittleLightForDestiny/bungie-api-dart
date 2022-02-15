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
    if (_$PresenceStatusEnumMap.containsKey(this)){
      return _$PresenceStatusEnumMap[this];
    }
    return null;
  }
}

PresenceStatus? decodePresenceStatus (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$PresenceStatusValueMap.containsKey(value)){
    return _$PresenceStatusValueMap[value];
  }

  return PresenceStatus.ProtectedInvalidEnumValue;
}

int? encodePresenceStatus (PresenceStatus? value) {
  return value?.value;
}

const Map<PresenceStatus, int> _$PresenceStatusEnumMap = <PresenceStatus, int>{
    PresenceStatus.OfflineOrUnknown:0,
    PresenceStatus.Online:1,
};
const Map<int, PresenceStatus> _$PresenceStatusValueMap = <int, PresenceStatus>{
    0:PresenceStatus.OfflineOrUnknown,
    1:PresenceStatus.Online,
};