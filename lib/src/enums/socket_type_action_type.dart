import 'package:json_annotation/json_annotation.dart';

enum SocketTypeActionType {
  ///InsertPlug = 0
  @JsonValue(0)
  InsertPlug,
  ///InfuseItem = 1
  @JsonValue(1)
  InfuseItem,
  ///ReinitializeSocket = 2
  @JsonValue(2)
  ReinitializeSocket,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension SocketTypeActionTypeExtension on SocketTypeActionType{
  int? get value {
    if (_$SocketTypeActionTypeEnumMap.containsKey(this)){
      return _$SocketTypeActionTypeEnumMap[this];
    }
    return null;
  }
}

SocketTypeActionType? decodeSocketTypeActionType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$SocketTypeActionTypeValueMap.containsKey(value)){
    return _$SocketTypeActionTypeValueMap[value];
  }

  return SocketTypeActionType.ProtectedInvalidEnumValue;
}

int? encodeSocketTypeActionType (SocketTypeActionType? value) {
  return value?.value;
}

const Map<SocketTypeActionType, int> _$SocketTypeActionTypeEnumMap = <SocketTypeActionType, int>{
    SocketTypeActionType.InsertPlug:0,
    SocketTypeActionType.InfuseItem:1,
    SocketTypeActionType.ReinitializeSocket:2,
};
const Map<int, SocketTypeActionType> _$SocketTypeActionTypeValueMap = <int, SocketTypeActionType>{
    0:SocketTypeActionType.InsertPlug,
    1:SocketTypeActionType.InfuseItem,
    2:SocketTypeActionType.ReinitializeSocket,
};