import 'package:json_annotation/json_annotation.dart';

enum BucketCategory {
  ///Invisible = 0
  @JsonValue(0)
  Invisible,
  ///Item = 1
  @JsonValue(1)
  Item,
  ///Currency = 2
  @JsonValue(2)
  Currency,
  ///Equippable = 3
  @JsonValue(3)
  Equippable,
  ///Ignored = 4
  @JsonValue(4)
  Ignored,
}

extension BucketCategoryExtension on BucketCategory{
  int get value {
    switch(this){
      case BucketCategory.Invisible:
        return 0;
      case BucketCategory.Item:
        return 1;
      case BucketCategory.Currency:
        return 2;
      case BucketCategory.Equippable:
        return 3;
      case BucketCategory.Ignored:
        return 4;
      default:
        return null;
    }
  }
}