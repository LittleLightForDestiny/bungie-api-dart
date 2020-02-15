import 'package:json_annotation/json_annotation.dart';

enum TierType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Currency = 1
  @JsonValue(1)
  Currency,
  ///Basic = 2
  @JsonValue(2)
  Basic,
  ///Common = 3
  @JsonValue(3)
  Common,
  ///Rare = 4
  @JsonValue(4)
  Rare,
  ///Superior = 5
  @JsonValue(5)
  Superior,
  ///Exotic = 6
  @JsonValue(6)
  Exotic,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension TierTypeExtension on TierType{
  int get value {
    switch(this){
      case TierType.Unknown:
        return 0;
      case TierType.Currency:
        return 1;
      case TierType.Basic:
        return 2;
      case TierType.Common:
        return 3;
      case TierType.Rare:
        return 4;
      case TierType.Superior:
        return 5;
      case TierType.Exotic:
        return 6;
      default:
        return null;
    }
  }
}