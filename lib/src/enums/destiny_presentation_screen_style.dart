import 'package:json_annotation/json_annotation.dart';

enum DestinyPresentationScreenStyle {
  ///Default = 0
  /// Use the &quot;default&quot; view for the presentation nodes.
  @JsonValue(0)
  Default,
  ///CategorySets = 1
  /// Show sub-items as &quot;category sets&quot;. In-game, you&#39;d see these as a vertical list of child presentation nodes - armor sets for example - and the icons of items within those sets displayed horizontally.
  @JsonValue(1)
  CategorySets,
  ///Badge = 2
  /// Show sub-items as Badges. (I know, I know. We don&#39;t need no stinkin&#39; badges har har har)
  @JsonValue(2)
  Badge,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyPresentationScreenStyleExtension on DestinyPresentationScreenStyle{
  int? get value {
    if (_$DestinyPresentationScreenStyleEnumMap.containsKey(this)){
      return _$DestinyPresentationScreenStyleEnumMap[this];
    }
    return null;
  }
}

DestinyPresentationScreenStyle? decodeDestinyPresentationScreenStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyPresentationScreenStyleValueMap.containsKey(value)){
    return _$DestinyPresentationScreenStyleValueMap[value];
  }

  return DestinyPresentationScreenStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyPresentationScreenStyle (DestinyPresentationScreenStyle? value) {
  return value?.value;
}

const Map<DestinyPresentationScreenStyle, int> _$DestinyPresentationScreenStyleEnumMap = <DestinyPresentationScreenStyle, int>{
    DestinyPresentationScreenStyle.Default:0,
    DestinyPresentationScreenStyle.CategorySets:1,
    DestinyPresentationScreenStyle.Badge:2,
};
const Map<int, DestinyPresentationScreenStyle> _$DestinyPresentationScreenStyleValueMap = <int, DestinyPresentationScreenStyle>{
    0:DestinyPresentationScreenStyle.Default,
    1:DestinyPresentationScreenStyle.CategorySets,
    2:DestinyPresentationScreenStyle.Badge,
};