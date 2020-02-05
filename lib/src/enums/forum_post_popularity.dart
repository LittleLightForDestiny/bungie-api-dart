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
}

extension ForumPostPopularityExtension on ForumPostPopularity{
  int get value {
    switch(this){
      case ForumPostPopularity.Empty:
        return 0;
      case ForumPostPopularity.Default:
        return 1;
      case ForumPostPopularity.Discussed:
        return 2;
      case ForumPostPopularity.CoolStory:
        return 3;
      case ForumPostPopularity.HeatingUp:
        return 4;
      case ForumPostPopularity.Hot:
        return 5;
      default:
        return null;
    }
  }
}