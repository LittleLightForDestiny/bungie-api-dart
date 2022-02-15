import 'package:json_annotation/json_annotation.dart';

enum BucketScope {
  ///Character = 0
  @JsonValue(0)
  Character,
  ///Account = 1
  @JsonValue(1)
  Account,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension BucketScopeExtension on BucketScope{
  int? get value {
    if (_$BucketScopeEnumMap.containsKey(this)){
      return _$BucketScopeEnumMap[this];
    }
    return null;
  }
}

BucketScope? decodeBucketScope (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$BucketScopeValueMap.containsKey(value)){
    return _$BucketScopeValueMap[value];
  }

  return BucketScope.ProtectedInvalidEnumValue;
}

int? encodeBucketScope (BucketScope? value) {
  return value?.value;
}

const Map<BucketScope, int> _$BucketScopeEnumMap = <BucketScope, int>{
    BucketScope.Character:0,
    BucketScope.Account:1,
};
const Map<int, BucketScope> _$BucketScopeValueMap = <int, BucketScope>{
    0:BucketScope.Character,
    1:BucketScope.Account,
};