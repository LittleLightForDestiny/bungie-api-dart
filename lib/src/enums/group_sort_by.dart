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
    switch(this){
      case GroupSortBy.Name:
        return 0;
      case GroupSortBy.Date:
        return 1;
      case GroupSortBy.Popularity:
        return 2;
      case GroupSortBy.Id:
        return 3;
      default:
        return null;
    }
  }
}