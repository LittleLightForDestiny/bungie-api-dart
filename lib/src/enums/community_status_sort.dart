import 'package:json_annotation/json_annotation.dart';

enum CommunityStatusSort {
  ///Viewers = 0
  @JsonValue(0)
  Viewers,
  ///Trending = 1
  @JsonValue(1)
  Trending,
  ///OverallViewers = 2
  @JsonValue(2)
  OverallViewers,
  ///Followers = 3
  @JsonValue(3)
  Followers,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension CommunityStatusSortExtension on CommunityStatusSort{
  int get value {
    switch(this){
      case CommunityStatusSort.Viewers:
        return 0;
      case CommunityStatusSort.Trending:
        return 1;
      case CommunityStatusSort.OverallViewers:
        return 2;
      case CommunityStatusSort.Followers:
        return 3;
      default:
        return null;
    }
  }
}