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
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension BucketCategoryExtension on BucketCategory{
  int? get value {
    if (_$BucketCategoryEnumMap.containsKey(this)){
      return _$BucketCategoryEnumMap[this];
    }
    return null;
  }
}

BucketCategory? decodeBucketCategory (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$BucketCategoryValueMap.containsKey(value)){
    return _$BucketCategoryValueMap[value];
  }

  return BucketCategory.ProtectedInvalidEnumValue;
}

int? encodeBucketCategory (BucketCategory? value) {
  return value?.value;
}

const Map<BucketCategory, int> _$BucketCategoryEnumMap = <BucketCategory, int>{
    BucketCategory.Invisible:0,
    BucketCategory.Item:1,
    BucketCategory.Currency:2,
    BucketCategory.Equippable:3,
    BucketCategory.Ignored:4,
};
const Map<int, BucketCategory> _$BucketCategoryValueMap = <int, BucketCategory>{
    0:BucketCategory.Invisible,
    1:BucketCategory.Item,
    2:BucketCategory.Currency,
    3:BucketCategory.Equippable,
    4:BucketCategory.Ignored,
};