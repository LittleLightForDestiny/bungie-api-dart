import 'package:json_annotation/json_annotation.dart';

enum GroupsForMemberFilter {
  ///All = 0
  @JsonValue(0)
  All,
  ///Founded = 1
  @JsonValue(1)
  Founded,
  ///NonFounded = 2
  @JsonValue(2)
  NonFounded,
}

extension GroupsForMemberFilterExtension on GroupsForMemberFilter{
  int get value {
    switch(this){
      case GroupsForMemberFilter.All:
        return 0;
      case GroupsForMemberFilter.Founded:
        return 1;
      case GroupsForMemberFilter.NonFounded:
        return 2;
      default:
        return null;
    }
  }
}