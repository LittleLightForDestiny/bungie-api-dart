import 'package:json_annotation/json_annotation.dart';

enum DestinyVendorInteractionRewardSelection {
  ///None = 0
  @JsonValue(0)
  None,
  ///One = 1
  @JsonValue(1)
  One,
  ///All = 2
  @JsonValue(2)
  All,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorInteractionRewardSelectionExtension on DestinyVendorInteractionRewardSelection{
  int? get value {
    if (_$DestinyVendorInteractionRewardSelectionEnumMap.containsKey(this)){
      return _$DestinyVendorInteractionRewardSelectionEnumMap[this];
    }
    return null;
  }
}

DestinyVendorInteractionRewardSelection? decodeDestinyVendorInteractionRewardSelection (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyVendorInteractionRewardSelectionValueMap.containsKey(value)){
    return _$DestinyVendorInteractionRewardSelectionValueMap[value];
  }

  return DestinyVendorInteractionRewardSelection.ProtectedInvalidEnumValue;
}

int? encodeDestinyVendorInteractionRewardSelection (DestinyVendorInteractionRewardSelection? value) {
  return value?.value;
}

const Map<DestinyVendorInteractionRewardSelection, int> _$DestinyVendorInteractionRewardSelectionEnumMap = <DestinyVendorInteractionRewardSelection, int>{
    DestinyVendorInteractionRewardSelection.None:0,
    DestinyVendorInteractionRewardSelection.One:1,
    DestinyVendorInteractionRewardSelection.All:2,
};
const Map<int, DestinyVendorInteractionRewardSelection> _$DestinyVendorInteractionRewardSelectionValueMap = <int, DestinyVendorInteractionRewardSelection>{
    0:DestinyVendorInteractionRewardSelection.None,
    1:DestinyVendorInteractionRewardSelection.One,
    2:DestinyVendorInteractionRewardSelection.All,
};