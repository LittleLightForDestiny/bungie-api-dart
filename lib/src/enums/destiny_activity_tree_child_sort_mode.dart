import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityTreeChildSortMode {
  ///Investment = 0
  @JsonValue(0)
  Investment,
  ///FocusFirst = 1
  @JsonValue(1)
  FocusFirst,
  ///BonusAndFocusFirst = 2
  @JsonValue(2)
  BonusAndFocusFirst,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityTreeChildSortModeExtension on DestinyActivityTreeChildSortMode{
  int? get value {
    if (_$DestinyActivityTreeChildSortModeEnumMap.containsKey(this)){
      return _$DestinyActivityTreeChildSortModeEnumMap[this];
    }
    return null;
  }
}

DestinyActivityTreeChildSortMode? decodeDestinyActivityTreeChildSortMode (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityTreeChildSortModeValueMap.containsKey(value)){
    return _$DestinyActivityTreeChildSortModeValueMap[value];
  }

  return DestinyActivityTreeChildSortMode.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityTreeChildSortMode (DestinyActivityTreeChildSortMode? value) {
  return value?.value;
}

const Map<DestinyActivityTreeChildSortMode, int> _$DestinyActivityTreeChildSortModeEnumMap = <DestinyActivityTreeChildSortMode, int>{
    DestinyActivityTreeChildSortMode.Investment:0,
    DestinyActivityTreeChildSortMode.FocusFirst:1,
    DestinyActivityTreeChildSortMode.BonusAndFocusFirst:2,
};
const Map<int, DestinyActivityTreeChildSortMode> _$DestinyActivityTreeChildSortModeValueMap = <int, DestinyActivityTreeChildSortMode>{
    0:DestinyActivityTreeChildSortMode.Investment,
    1:DestinyActivityTreeChildSortMode.FocusFirst,
    2:DestinyActivityTreeChildSortMode.BonusAndFocusFirst,
};