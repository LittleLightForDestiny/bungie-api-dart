import 'package:json_annotation/json_annotation.dart';

enum DestinyGender {
  ///Male = 0
  @JsonValue(0)
  Male,
  ///Female = 1
  @JsonValue(1)
  Female,
  ///Unknown = 2
  @JsonValue(2)
  Unknown,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyGenderExtension on DestinyGender{
  int? get value {
    if (_$DestinyGenderEnumMap.containsKey(this)){
      return _$DestinyGenderEnumMap[this];
    }
    return null;
  }
}

DestinyGender? decodeDestinyGender (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyGenderValueMap.containsKey(value)){
    return _$DestinyGenderValueMap[value];
  }

  return DestinyGender.ProtectedInvalidEnumValue;
}

int? encodeDestinyGender (DestinyGender? value) {
  return value?.value;
}

const Map<DestinyGender, int> _$DestinyGenderEnumMap = <DestinyGender, int>{
    DestinyGender.Male:0,
    DestinyGender.Female:1,
    DestinyGender.Unknown:2,
};
const Map<int, DestinyGender> _$DestinyGenderValueMap = <int, DestinyGender>{
    0:DestinyGender.Male,
    1:DestinyGender.Female,
    2:DestinyGender.Unknown,
};