import 'package:json_annotation/json_annotation.dart';

enum ForumTopicsQuickDateEnum {
  ///All = 0
  @JsonValue(0)
  All,
  ///LastYear = 1
  @JsonValue(1)
  LastYear,
  ///LastMonth = 2
  @JsonValue(2)
  LastMonth,
  ///LastWeek = 3
  @JsonValue(3)
  LastWeek,
  ///LastDay = 4
  @JsonValue(4)
  LastDay,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumTopicsQuickDateEnumExtension on ForumTopicsQuickDateEnum{
  int? get value {
    switch(this){
      case ForumTopicsQuickDateEnum.All:
        return 0;
      case ForumTopicsQuickDateEnum.LastYear:
        return 1;
      case ForumTopicsQuickDateEnum.LastMonth:
        return 2;
      case ForumTopicsQuickDateEnum.LastWeek:
        return 3;
      case ForumTopicsQuickDateEnum.LastDay:
        return 4;
      default:
        return null;
    }
  }
}