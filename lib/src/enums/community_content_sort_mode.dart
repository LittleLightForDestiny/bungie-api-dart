import 'package:json_annotation/json_annotation.dart';

enum CommunityContentSortMode {
  ///Trending = 0
  @JsonValue(0)
  Trending,
  ///Latest = 1
  @JsonValue(1)
  Latest,
  ///HighestRated = 2
  @JsonValue(2)
  HighestRated,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension CommunityContentSortModeExtension on CommunityContentSortMode{
  int get value {
    switch(this){
      case CommunityContentSortMode.Trending:
        return 0;
      case CommunityContentSortMode.Latest:
        return 1;
      case CommunityContentSortMode.HighestRated:
        return 2;
      default:
        return null;
    }
  }
}