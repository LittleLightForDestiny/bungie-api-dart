import 'package:json_annotation/json_annotation.dart';

enum GroupType {
  ///General = 0
  @JsonValue(0)
  General,
  ///Clan = 1
  @JsonValue(1)
  Clan,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupTypeExtension on GroupType{
  int get value {
    switch(this){
      case GroupType.General:
        return 0;
      case GroupType.Clan:
        return 1;
      default:
        return null;
    }
  }
}