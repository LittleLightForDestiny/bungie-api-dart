import 'package:json_annotation/json_annotation.dart';

enum GroupDateRange {
  ///All = 0
  @JsonValue(0)
  All,
  ///PastDay = 1
  @JsonValue(1)
  PastDay,
  ///PastWeek = 2
  @JsonValue(2)
  PastWeek,
  ///PastMonth = 3
  @JsonValue(3)
  PastMonth,
  ///PastYear = 4
  @JsonValue(4)
  PastYear,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupDateRangeExtension on GroupDateRange{
  int? get value {
    if (_$GroupDateRangeEnumMap.containsKey(this)){
      return _$GroupDateRangeEnumMap[this];
    }
    return null;
  }
}

GroupDateRange? decodeGroupDateRange (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupDateRangeValueMap.containsKey(value)){
    return _$GroupDateRangeValueMap[value];
  }

  return GroupDateRange.ProtectedInvalidEnumValue;
}

int? encodeGroupDateRange (GroupDateRange? value) {
  return value?.value;
}

const Map<GroupDateRange, int> _$GroupDateRangeEnumMap = <GroupDateRange, int>{
    GroupDateRange.All:0,
    GroupDateRange.PastDay:1,
    GroupDateRange.PastWeek:2,
    GroupDateRange.PastMonth:3,
    GroupDateRange.PastYear:4,
};
const Map<int, GroupDateRange> _$GroupDateRangeValueMap = <int, GroupDateRange>{
    0:GroupDateRange.All,
    1:GroupDateRange.PastDay,
    2:GroupDateRange.PastWeek,
    3:GroupDateRange.PastMonth,
    4:GroupDateRange.PastYear,
};