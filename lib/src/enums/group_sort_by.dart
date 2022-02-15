import 'package:json_annotation/json_annotation.dart';

enum GroupSortBy {
  ///Name = 0
  @JsonValue(0)
  Name,
  ///Date = 1
  @JsonValue(1)
  Date,
  ///Popularity = 2
  @JsonValue(2)
  Popularity,
  ///Id = 3
  @JsonValue(3)
  Id,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupSortByExtension on GroupSortBy{
  int? get value {
    if (_$GroupSortByEnumMap.containsKey(this)){
      return _$GroupSortByEnumMap[this];
    }
    return null;
  }
}

GroupSortBy? decodeGroupSortBy (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupSortByValueMap.containsKey(value)){
    return _$GroupSortByValueMap[value];
  }

  return GroupSortBy.ProtectedInvalidEnumValue;
}

int? encodeGroupSortBy (GroupSortBy? value) {
  return value?.value;
}

const Map<GroupSortBy, int> _$GroupSortByEnumMap = <GroupSortBy, int>{
    GroupSortBy.Name:0,
    GroupSortBy.Date:1,
    GroupSortBy.Popularity:2,
    GroupSortBy.Id:3,
};
const Map<int, GroupSortBy> _$GroupSortByValueMap = <int, GroupSortBy>{
    0:GroupSortBy.Name,
    1:GroupSortBy.Date,
    2:GroupSortBy.Popularity,
    3:GroupSortBy.Id,
};