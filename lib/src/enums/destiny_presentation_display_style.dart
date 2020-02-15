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
  int get value {
    switch(this){
      case DestinyPresentationDisplayStyle.Category:
        return 0;
      case DestinyPresentationDisplayStyle.Badge:
        return 1;
      case DestinyPresentationDisplayStyle.Medals:
        return 2;
      case DestinyPresentationDisplayStyle.Collectible:
        return 3;
      case DestinyPresentationDisplayStyle.Record:
        return 4;
      default:
        return null;
    }
  }
}