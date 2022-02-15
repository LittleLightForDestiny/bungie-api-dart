import 'package:json_annotation/json_annotation.dart';

enum AwaUserSelection {
  ///None = 0
  @JsonValue(0)
  None,
  ///Rejected = 1
  @JsonValue(1)
  Rejected,
  ///Approved = 2
  @JsonValue(2)
  Approved,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension AwaUserSelectionExtension on AwaUserSelection{
  int? get value {
    if (_$AwaUserSelectionEnumMap.containsKey(this)){
      return _$AwaUserSelectionEnumMap[this];
    }
    return null;
  }
}

AwaUserSelection? decodeAwaUserSelection (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$AwaUserSelectionValueMap.containsKey(value)){
    return _$AwaUserSelectionValueMap[value];
  }

  return AwaUserSelection.ProtectedInvalidEnumValue;
}

int? encodeAwaUserSelection (AwaUserSelection? value) {
  return value?.value;
}

const Map<AwaUserSelection, int> _$AwaUserSelectionEnumMap = <AwaUserSelection, int>{
    AwaUserSelection.None:0,
    AwaUserSelection.Rejected:1,
    AwaUserSelection.Approved:2,
};
const Map<int, AwaUserSelection> _$AwaUserSelectionValueMap = <int, AwaUserSelection>{
    0:AwaUserSelection.None,
    1:AwaUserSelection.Rejected,
    2:AwaUserSelection.Approved,
};