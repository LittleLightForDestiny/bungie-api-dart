import 'package:json_annotation/json_annotation.dart';

enum FireteamFinderLabelFieldType {
  ///Title = 0
  @JsonValue(0)
  Title,
  ///Label = 1
  @JsonValue(1)
  Label,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamFinderLabelFieldTypeExtension on FireteamFinderLabelFieldType{
  int? get value {
    if (_$FireteamFinderLabelFieldTypeEnumMap.containsKey(this)){
      return _$FireteamFinderLabelFieldTypeEnumMap[this];
    }
    return null;
  }
}

FireteamFinderLabelFieldType? decodeFireteamFinderLabelFieldType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamFinderLabelFieldTypeValueMap.containsKey(value)){
    return _$FireteamFinderLabelFieldTypeValueMap[value];
  }

  return FireteamFinderLabelFieldType.ProtectedInvalidEnumValue;
}

int? encodeFireteamFinderLabelFieldType (FireteamFinderLabelFieldType? value) {
  return value?.value;
}

const Map<FireteamFinderLabelFieldType, int> _$FireteamFinderLabelFieldTypeEnumMap = <FireteamFinderLabelFieldType, int>{
    FireteamFinderLabelFieldType.Title:0,
    FireteamFinderLabelFieldType.Label:1,
};
const Map<int, FireteamFinderLabelFieldType> _$FireteamFinderLabelFieldTypeValueMap = <int, FireteamFinderLabelFieldType>{
    0:FireteamFinderLabelFieldType.Title,
    1:FireteamFinderLabelFieldType.Label,
};