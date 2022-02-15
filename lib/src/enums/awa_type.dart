import 'package:json_annotation/json_annotation.dart';

enum AwaType {
  ///None = 0
  @JsonValue(0)
  None,
  ///InsertPlugs = 1
  /// Insert plugs into sockets.
  @JsonValue(1)
  InsertPlugs,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension AwaTypeExtension on AwaType{
  int? get value {
    if (_$AwaTypeEnumMap.containsKey(this)){
      return _$AwaTypeEnumMap[this];
    }
    return null;
  }
}

AwaType? decodeAwaType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$AwaTypeValueMap.containsKey(value)){
    return _$AwaTypeValueMap[value];
  }

  return AwaType.ProtectedInvalidEnumValue;
}

int? encodeAwaType (AwaType? value) {
  return value?.value;
}

const Map<AwaType, int> _$AwaTypeEnumMap = <AwaType, int>{
    AwaType.None:0,
    AwaType.InsertPlugs:1,
};
const Map<int, AwaType> _$AwaTypeValueMap = <int, AwaType>{
    0:AwaType.None,
    1:AwaType.InsertPlugs,
};