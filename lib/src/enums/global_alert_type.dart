import 'package:json_annotation/json_annotation.dart';

enum GlobalAlertType {
  ///GlobalAlert = 0
  @JsonValue(0)
  GlobalAlert,
  ///StreamingAlert = 1
  @JsonValue(1)
  StreamingAlert,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GlobalAlertTypeExtension on GlobalAlertType{
  int? get value {
    if (_$GlobalAlertTypeEnumMap.containsKey(this)){
      return _$GlobalAlertTypeEnumMap[this];
    }
    return null;
  }
}

GlobalAlertType? decodeGlobalAlertType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GlobalAlertTypeValueMap.containsKey(value)){
    return _$GlobalAlertTypeValueMap[value];
  }

  return GlobalAlertType.ProtectedInvalidEnumValue;
}

int? encodeGlobalAlertType (GlobalAlertType? value) {
  return value?.value;
}

const Map<GlobalAlertType, int> _$GlobalAlertTypeEnumMap = <GlobalAlertType, int>{
    GlobalAlertType.GlobalAlert:0,
    GlobalAlertType.StreamingAlert:1,
};
const Map<int, GlobalAlertType> _$GlobalAlertTypeValueMap = <int, GlobalAlertType>{
    0:GlobalAlertType.GlobalAlert,
    1:GlobalAlertType.StreamingAlert,
};