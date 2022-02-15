import 'package:json_annotation/json_annotation.dart';

enum DestinyClass {
  ///Titan = 0
  @JsonValue(0)
  Titan,
  ///Hunter = 1
  @JsonValue(1)
  Hunter,
  ///Warlock = 2
  @JsonValue(2)
  Warlock,
  ///Unknown = 3
  @JsonValue(3)
  Unknown,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyClassExtension on DestinyClass{
  int? get value {
    if (_$DestinyClassEnumMap.containsKey(this)){
      return _$DestinyClassEnumMap[this];
    }
    return null;
  }
}

DestinyClass? decodeDestinyClass (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyClassValueMap.containsKey(value)){
    return _$DestinyClassValueMap[value];
  }

  return DestinyClass.ProtectedInvalidEnumValue;
}

int? encodeDestinyClass (DestinyClass? value) {
  return value?.value;
}

const Map<DestinyClass, int> _$DestinyClassEnumMap = <DestinyClass, int>{
    DestinyClass.Titan:0,
    DestinyClass.Hunter:1,
    DestinyClass.Warlock:2,
    DestinyClass.Unknown:3,
};
const Map<int, DestinyClass> _$DestinyClassValueMap = <int, DestinyClass>{
    0:DestinyClass.Titan,
    1:DestinyClass.Hunter,
    2:DestinyClass.Warlock,
    3:DestinyClass.Unknown,
};