import 'package:json_annotation/json_annotation.dart';

enum GroupHomepage {
  ///Wall = 0
  @JsonValue(0)
  Wall,
  ///Forum = 1
  @JsonValue(1)
  Forum,
  ///AllianceForum = 2
  @JsonValue(2)
  AllianceForum,
}

extension GroupHomepageExtension on GroupHomepage{
  int get value {
    switch(this){
      case GroupHomepage.Wall:
        return 0;
      case GroupHomepage.Forum:
        return 1;
      case GroupHomepage.AllianceForum:
        return 2;
      default:
        return null;
    }
  }
}