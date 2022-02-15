import 'package:json_annotation/json_annotation.dart';

enum ForumPostSortEnum {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///OldestFirst = 1
  @JsonValue(1)
  OldestFirst,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumPostSortEnumExtension on ForumPostSortEnum{
  int? get value {
    if (_$ForumPostSortEnumEnumMap.containsKey(this)){
      return _$ForumPostSortEnumEnumMap[this];
    }
    return null;
  }
}

ForumPostSortEnum? decodeForumPostSortEnum (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ForumPostSortEnumValueMap.containsKey(value)){
    return _$ForumPostSortEnumValueMap[value];
  }

  return ForumPostSortEnum.ProtectedInvalidEnumValue;
}

int? encodeForumPostSortEnum (ForumPostSortEnum? value) {
  return value?.value;
}

const Map<ForumPostSortEnum, int> _$ForumPostSortEnumEnumMap = <ForumPostSortEnum, int>{
    ForumPostSortEnum.Default:0,
    ForumPostSortEnum.OldestFirst:1,
};
const Map<int, ForumPostSortEnum> _$ForumPostSortEnumValueMap = <int, ForumPostSortEnum>{
    0:ForumPostSortEnum.Default,
    1:ForumPostSortEnum.OldestFirst,
};