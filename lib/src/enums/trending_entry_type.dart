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
    switch(this){
      case TrendingEntryType.News:
        return 0;
      case TrendingEntryType.DestinyItem:
        return 1;
      case TrendingEntryType.DestinyActivity:
        return 2;
      case TrendingEntryType.DestinyRitual:
        return 3;
      case TrendingEntryType.SupportArticle:
        return 4;
      case TrendingEntryType.Creation:
        return 5;
      case TrendingEntryType.Stream:
        return 6;
      case TrendingEntryType.Update:
        return 7;
      case TrendingEntryType.Link:
        return 8;
      case TrendingEntryType.ForumTag:
        return 9;
      case TrendingEntryType.Container:
        return 10;
      case TrendingEntryType.Release:
        return 11;
      default:
        return null;
    }
  }
}