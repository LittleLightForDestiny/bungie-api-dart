import 'package:json_annotation/json_annotation.dart';

enum DropStateEnum {
  ///Claimed = 0
  @JsonValue(0)
  Claimed,
  ///Applied = 1
  @JsonValue(1)
  Applied,
  ///Fulfilled = 2
  @JsonValue(2)
  Fulfilled,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DropStateEnumExtension on DropStateEnum{
  int? get value {
    if (_$DropStateEnumEnumMap.containsKey(this)){
      return _$DropStateEnumEnumMap[this];
    }
    return null;
  }
}

DropStateEnum? decodeDropStateEnum (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DropStateEnumValueMap.containsKey(value)){
    return _$DropStateEnumValueMap[value];
  }

  return DropStateEnum.ProtectedInvalidEnumValue;
}

int? encodeDropStateEnum (DropStateEnum? value) {
  return value?.value;
}

const Map<DropStateEnum, int> _$DropStateEnumEnumMap = <DropStateEnum, int>{
    DropStateEnum.Claimed:0,
    DropStateEnum.Applied:1,
    DropStateEnum.Fulfilled:2,
};
const Map<int, DropStateEnum> _$DropStateEnumValueMap = <int, DropStateEnum>{
    0:DropStateEnum.Claimed,
    1:DropStateEnum.Applied,
    2:DropStateEnum.Fulfilled,
};