import 'package:json_annotation/json_annotation.dart';

enum DestinySocketArrayType {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///Intrinsic = 1
  @JsonValue(1)
  Intrinsic,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinySocketArrayTypeExtension on DestinySocketArrayType{
  int get value {
    switch(this){
      case DestinySocketArrayType.Default:
        return 0;
      case DestinySocketArrayType.Intrinsic:
        return 1;
      default:
        return null;
    }
  }
}