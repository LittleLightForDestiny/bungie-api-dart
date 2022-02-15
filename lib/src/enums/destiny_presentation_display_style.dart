import 'package:json_annotation/json_annotation.dart';

enum DestinyPresentationDisplayStyle {
  ///Category = 0
  /// Display the item as a category, through which sub-items are filtered.
  @JsonValue(0)
  Category,
  ///Badge = 1
  @JsonValue(1)
  Badge,
  ///Medals = 2
  @JsonValue(2)
  Medals,
  ///Collectible = 3
  @JsonValue(3)
  Collectible,
  ///Record = 4
  @JsonValue(4)
  Record,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyPresentationDisplayStyleExtension on DestinyPresentationDisplayStyle{
  int? get value {
    if (_$DestinyPresentationDisplayStyleEnumMap.containsKey(this)){
      return _$DestinyPresentationDisplayStyleEnumMap[this];
    }
    return null;
  }
}

DestinyPresentationDisplayStyle? decodeDestinyPresentationDisplayStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyPresentationDisplayStyleValueMap.containsKey(value)){
    return _$DestinyPresentationDisplayStyleValueMap[value];
  }

  return DestinyPresentationDisplayStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyPresentationDisplayStyle (DestinyPresentationDisplayStyle? value) {
  return value?.value;
}

const Map<DestinyPresentationDisplayStyle, int> _$DestinyPresentationDisplayStyleEnumMap = <DestinyPresentationDisplayStyle, int>{
    DestinyPresentationDisplayStyle.Category:0,
    DestinyPresentationDisplayStyle.Badge:1,
    DestinyPresentationDisplayStyle.Medals:2,
    DestinyPresentationDisplayStyle.Collectible:3,
    DestinyPresentationDisplayStyle.Record:4,
};
const Map<int, DestinyPresentationDisplayStyle> _$DestinyPresentationDisplayStyleValueMap = <int, DestinyPresentationDisplayStyle>{
    0:DestinyPresentationDisplayStyle.Category,
    1:DestinyPresentationDisplayStyle.Badge,
    2:DestinyPresentationDisplayStyle.Medals,
    3:DestinyPresentationDisplayStyle.Collectible,
    4:DestinyPresentationDisplayStyle.Record,
};