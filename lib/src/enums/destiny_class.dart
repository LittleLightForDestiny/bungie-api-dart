import 'package:json_annotation/json_annotation.dart';

enum DestinyClass {
  ///Titan = 0
  @JsonValue(0)
  Titan,
  ///Hunter = 1
  @JsonValue(1)
  Hunter,
  ///Warlock = 2
  @JsonValue(2)
  Warlock,
  ///Unknown = 3
  @JsonValue(3)
  Unknown,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyClassExtension on DestinyClass{
  int? get value {
    switch(this){
      case DestinyClass.Titan:
        return 0;
      case DestinyClass.Hunter:
        return 1;
      case DestinyClass.Warlock:
        return 2;
      case DestinyClass.Unknown:
        return 3;
      default:
        return null;
    }
  }
}