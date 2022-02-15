import 'package:json_annotation/json_annotation.dart';

enum ForumTopicsSortEnum {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///LastReplied = 1
  @JsonValue(1)
  LastReplied,
  ///MostReplied = 2
  @JsonValue(2)
  MostReplied,
  ///Popularity = 3
  @JsonValue(3)
  Popularity,
  ///Controversiality = 4
  @JsonValue(4)
  Controversiality,
  ///Liked = 5
  @JsonValue(5)
  Liked,
  ///HighestRated = 6
  @JsonValue(6)
  HighestRated,
  ///MostUpvoted = 7
  @JsonValue(7)
  MostUpvoted,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumTopicsSortEnumExtension on ForumTopicsSortEnum{
  int? get value {
    if (_$ForumTopicsSortEnumEnumMap.containsKey(this)){
      return _$ForumTopicsSortEnumEnumMap[this];
    }
    return null;
  }
}

ForumTopicsSortEnum? decodeForumTopicsSortEnum (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ForumTopicsSortEnumValueMap.containsKey(value)){
    return _$ForumTopicsSortEnumValueMap[value];
  }

  return ForumTopicsSortEnum.ProtectedInvalidEnumValue;
}

int? encodeForumTopicsSortEnum (ForumTopicsSortEnum? value) {
  return value?.value;
}

const Map<ForumTopicsSortEnum, int> _$ForumTopicsSortEnumEnumMap = <ForumTopicsSortEnum, int>{
    ForumTopicsSortEnum.Default:0,
    ForumTopicsSortEnum.LastReplied:1,
    ForumTopicsSortEnum.MostReplied:2,
    ForumTopicsSortEnum.Popularity:3,
    ForumTopicsSortEnum.Controversiality:4,
    ForumTopicsSortEnum.Liked:5,
    ForumTopicsSortEnum.HighestRated:6,
    ForumTopicsSortEnum.MostUpvoted:7,
};
const Map<int, ForumTopicsSortEnum> _$ForumTopicsSortEnumValueMap = <int, ForumTopicsSortEnum>{
    0:ForumTopicsSortEnum.Default,
    1:ForumTopicsSortEnum.LastReplied,
    2:ForumTopicsSortEnum.MostReplied,
    3:ForumTopicsSortEnum.Popularity,
    4:ForumTopicsSortEnum.Controversiality,
    5:ForumTopicsSortEnum.Liked,
    6:ForumTopicsSortEnum.HighestRated,
    7:ForumTopicsSortEnum.MostUpvoted,
};