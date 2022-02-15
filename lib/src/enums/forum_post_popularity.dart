import 'package:json_annotation/json_annotation.dart';

enum ForumPostPopularity {
  ///Empty = 0
  @JsonValue(0)
  Empty,
  ///Default = 1
  @JsonValue(1)
  Default,
  ///Discussed = 2
  @JsonValue(2)
  Discussed,
  ///CoolStory = 3
  @JsonValue(3)
  CoolStory,
  ///HeatingUp = 4
  @JsonValue(4)
  HeatingUp,
  ///Hot = 5
  @JsonValue(5)
  Hot,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumPostPopularityExtension on ForumPostPopularity{
  int? get value {
    if (_$ForumPostPopularityEnumMap.containsKey(this)){
      return _$ForumPostPopularityEnumMap[this];
    }
    return null;
  }
}

ForumPostPopularity? decodeForumPostPopularity (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ForumPostPopularityValueMap.containsKey(value)){
    return _$ForumPostPopularityValueMap[value];
  }

  return ForumPostPopularity.ProtectedInvalidEnumValue;
}

int? encodeForumPostPopularity (ForumPostPopularity? value) {
  return value?.value;
}

const Map<ForumPostPopularity, int> _$ForumPostPopularityEnumMap = <ForumPostPopularity, int>{
    ForumPostPopularity.Empty:0,
    ForumPostPopularity.Default:1,
    ForumPostPopularity.Discussed:2,
    ForumPostPopularity.CoolStory:3,
    ForumPostPopularity.HeatingUp:4,
    ForumPostPopularity.Hot:5,
};
const Map<int, ForumPostPopularity> _$ForumPostPopularityValueMap = <int, ForumPostPopularity>{
    0:ForumPostPopularity.Empty,
    1:ForumPostPopularity.Default,
    2:ForumPostPopularity.Discussed,
    3:ForumPostPopularity.CoolStory,
    4:ForumPostPopularity.HeatingUp,
    5:ForumPostPopularity.Hot,
};