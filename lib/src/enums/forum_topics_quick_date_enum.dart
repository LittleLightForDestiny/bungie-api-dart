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
    if (_$ForumTopicsQuickDateEnumEnumMap.containsKey(this)){
      return _$ForumTopicsQuickDateEnumEnumMap[this];
    }
    return null;
  }
}

ForumTopicsQuickDateEnum? decodeForumTopicsQuickDateEnum (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ForumTopicsQuickDateEnumValueMap.containsKey(value)){
    return _$ForumTopicsQuickDateEnumValueMap[value];
  }

  return ForumTopicsQuickDateEnum.ProtectedInvalidEnumValue;
}

int? encodeForumTopicsQuickDateEnum (ForumTopicsQuickDateEnum? value) {
  return value?.value;
}

const Map<ForumTopicsQuickDateEnum, int> _$ForumTopicsQuickDateEnumEnumMap = <ForumTopicsQuickDateEnum, int>{
    ForumTopicsQuickDateEnum.All:0,
    ForumTopicsQuickDateEnum.LastYear:1,
    ForumTopicsQuickDateEnum.LastMonth:2,
    ForumTopicsQuickDateEnum.LastWeek:3,
    ForumTopicsQuickDateEnum.LastDay:4,
};
const Map<int, ForumTopicsQuickDateEnum> _$ForumTopicsQuickDateEnumValueMap = <int, ForumTopicsQuickDateEnum>{
    0:ForumTopicsQuickDateEnum.All,
    1:ForumTopicsQuickDateEnum.LastYear,
    2:ForumTopicsQuickDateEnum.LastMonth,
    3:ForumTopicsQuickDateEnum.LastWeek,
    4:ForumTopicsQuickDateEnum.LastDay,
};