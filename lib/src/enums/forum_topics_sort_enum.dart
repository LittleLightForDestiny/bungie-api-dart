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
  int get value {
    switch(this){
      case ForumTopicsSortEnum.Default:
        return 0;
      case ForumTopicsSortEnum.LastReplied:
        return 1;
      case ForumTopicsSortEnum.MostReplied:
        return 2;
      case ForumTopicsSortEnum.Popularity:
        return 3;
      case ForumTopicsSortEnum.Controversiality:
        return 4;
      case ForumTopicsSortEnum.Liked:
        return 5;
      case ForumTopicsSortEnum.HighestRated:
        return 6;
      case ForumTopicsSortEnum.MostUpvoted:
        return 7;
      default:
        return null;
    }
  }
}