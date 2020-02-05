import 'package:json_annotation/json_annotation.dart';

enum DestinyBreakerType {
  ///None = 0
  @JsonValue(0)
  None,
  ///ShieldPiercing = 1
  @JsonValue(1)
  ShieldPiercing,
  ///Disruption = 2
  @JsonValue(2)
  Disruption,
  ///Stagger = 3
  @JsonValue(3)
  Stagger,
}

extension DestinyBreakerTypeExtension on DestinyBreakerType{
  int get value {
    switch(this){
      case DestinyBreakerType.None:
        return 0;
      case DestinyBreakerType.ShieldPiercing:
        return 1;
      case DestinyBreakerType.Disruption:
        return 2;
      case DestinyBreakerType.Stagger:
        return 3;
      default:
        return null;
    }
  }
}