import 'package:json_annotation/json_annotation.dart';

enum ForumPostSortEnum {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///OldestFirst = 1
  @JsonValue(1)
  OldestFirst,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumPostSortEnumExtension on ForumPostSortEnum{
  int? get value {
    switch(this){
      case ForumPostSortEnum.Default:
        return 0;
      case ForumPostSortEnum.OldestFirst:
        return 1;
      default:
        return null;
    }
  }
}