import 'package:json_annotation/json_annotation.dart';

enum DestinySocketVisibility {
  ///Visible = 0
  @JsonValue(0)
  Visible,
  ///Hidden = 1
  @JsonValue(1)
  Hidden,
  ///HiddenWhenEmpty = 2
  @JsonValue(2)
  HiddenWhenEmpty,
  ///HiddenIfNoPlugsAvailable = 3
  @JsonValue(3)
  HiddenIfNoPlugsAvailable,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinySocketVisibilityExtension on DestinySocketVisibility{
  int? get value {
    if (_$DestinySocketVisibilityEnumMap.containsKey(this)){
      return _$DestinySocketVisibilityEnumMap[this];
    }
    return null;
  }
}

DestinySocketVisibility? decodeDestinySocketVisibility (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinySocketVisibilityValueMap.containsKey(value)){
    return _$DestinySocketVisibilityValueMap[value];
  }

  return DestinySocketVisibility.ProtectedInvalidEnumValue;
}

int? encodeDestinySocketVisibility (DestinySocketVisibility? value) {
  return value?.value;
}

const Map<DestinySocketVisibility, int> _$DestinySocketVisibilityEnumMap = <DestinySocketVisibility, int>{
    DestinySocketVisibility.Visible:0,
    DestinySocketVisibility.Hidden:1,
    DestinySocketVisibility.HiddenWhenEmpty:2,
    DestinySocketVisibility.HiddenIfNoPlugsAvailable:3,
};
const Map<int, DestinySocketVisibility> _$DestinySocketVisibilityValueMap = <int, DestinySocketVisibility>{
    0:DestinySocketVisibility.Visible,
    1:DestinySocketVisibility.Hidden,
    2:DestinySocketVisibility.HiddenWhenEmpty,
    3:DestinySocketVisibility.HiddenIfNoPlugsAvailable,
};