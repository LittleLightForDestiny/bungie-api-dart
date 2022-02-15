import 'package:json_annotation/json_annotation.dart';

enum TrendingEntryType {
  ///News = 0
  @JsonValue(0)
  News,
  ///DestinyItem = 1
  @JsonValue(1)
  DestinyItem,
  ///DestinyActivity = 2
  @JsonValue(2)
  DestinyActivity,
  ///DestinyRitual = 3
  @JsonValue(3)
  DestinyRitual,
  ///SupportArticle = 4
  @JsonValue(4)
  SupportArticle,
  ///Creation = 5
  @JsonValue(5)
  Creation,
  ///Stream = 6
  @JsonValue(6)
  Stream,
  ///Update = 7
  @JsonValue(7)
  Update,
  ///Link = 8
  @JsonValue(8)
  Link,
  ///ForumTag = 9
  @JsonValue(9)
  ForumTag,
  ///Container = 10
  @JsonValue(10)
  Container,
  ///Release = 11
  @JsonValue(11)
  Release,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension TrendingEntryTypeExtension on TrendingEntryType{
  int? get value {
    if (_$TrendingEntryTypeEnumMap.containsKey(this)){
      return _$TrendingEntryTypeEnumMap[this];
    }
    return null;
  }
}

TrendingEntryType? decodeTrendingEntryType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$TrendingEntryTypeValueMap.containsKey(value)){
    return _$TrendingEntryTypeValueMap[value];
  }

  return TrendingEntryType.ProtectedInvalidEnumValue;
}

int? encodeTrendingEntryType (TrendingEntryType? value) {
  return value?.value;
}

const Map<TrendingEntryType, int> _$TrendingEntryTypeEnumMap = <TrendingEntryType, int>{
    TrendingEntryType.News:0,
    TrendingEntryType.DestinyItem:1,
    TrendingEntryType.DestinyActivity:2,
    TrendingEntryType.DestinyRitual:3,
    TrendingEntryType.SupportArticle:4,
    TrendingEntryType.Creation:5,
    TrendingEntryType.Stream:6,
    TrendingEntryType.Update:7,
    TrendingEntryType.Link:8,
    TrendingEntryType.ForumTag:9,
    TrendingEntryType.Container:10,
    TrendingEntryType.Release:11,
};
const Map<int, TrendingEntryType> _$TrendingEntryTypeValueMap = <int, TrendingEntryType>{
    0:TrendingEntryType.News,
    1:TrendingEntryType.DestinyItem,
    2:TrendingEntryType.DestinyActivity,
    3:TrendingEntryType.DestinyRitual,
    4:TrendingEntryType.SupportArticle,
    5:TrendingEntryType.Creation,
    6:TrendingEntryType.Stream,
    7:TrendingEntryType.Update,
    8:TrendingEntryType.Link,
    9:TrendingEntryType.ForumTag,
    10:TrendingEntryType.Container,
    11:TrendingEntryType.Release,
};