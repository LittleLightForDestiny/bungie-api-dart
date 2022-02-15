import 'package:json_annotation/json_annotation.dart';

enum DestinyObjectiveGrantStyle {
  ///WhenIncomplete = 0
  @JsonValue(0)
  WhenIncomplete,
  ///WhenComplete = 1
  @JsonValue(1)
  WhenComplete,
  ///Always = 2
  @JsonValue(2)
  Always,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyObjectiveGrantStyleExtension on DestinyObjectiveGrantStyle{
  int? get value {
    if (_$DestinyObjectiveGrantStyleEnumMap.containsKey(this)){
      return _$DestinyObjectiveGrantStyleEnumMap[this];
    }
    return null;
  }
}

DestinyObjectiveGrantStyle? decodeDestinyObjectiveGrantStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyObjectiveGrantStyleValueMap.containsKey(value)){
    return _$DestinyObjectiveGrantStyleValueMap[value];
  }

  return DestinyObjectiveGrantStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyObjectiveGrantStyle (DestinyObjectiveGrantStyle? value) {
  return value?.value;
}

const Map<DestinyObjectiveGrantStyle, int> _$DestinyObjectiveGrantStyleEnumMap = <DestinyObjectiveGrantStyle, int>{
    DestinyObjectiveGrantStyle.WhenIncomplete:0,
    DestinyObjectiveGrantStyle.WhenComplete:1,
    DestinyObjectiveGrantStyle.Always:2,
};
const Map<int, DestinyObjectiveGrantStyle> _$DestinyObjectiveGrantStyleValueMap = <int, DestinyObjectiveGrantStyle>{
    0:DestinyObjectiveGrantStyle.WhenIncomplete,
    1:DestinyObjectiveGrantStyle.WhenComplete,
    2:DestinyObjectiveGrantStyle.Always,
};