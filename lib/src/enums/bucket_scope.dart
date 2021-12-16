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
    switch(this){
      case BucketScope.Character:
        return 0;
      case BucketScope.Account:
        return 1;
      default:
        return null;
    }
  }
}