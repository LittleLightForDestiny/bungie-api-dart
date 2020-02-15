import 'package:json_annotation/json_annotation.dart';

enum ItemBindStatus {
  ///NotBound = 0
  @JsonValue(0)
  NotBound,
  ///BoundToCharacter = 1
  @JsonValue(1)
  BoundToCharacter,
  ///BoundToAccount = 2
  @JsonValue(2)
  BoundToAccount,
  ///BoundToGuild = 3
  @JsonValue(3)
  BoundToGuild,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ItemBindStatusExtension on ItemBindStatus{
  int get value {
    switch(this){
      case ItemBindStatus.NotBound:
        return 0;
      case ItemBindStatus.BoundToCharacter:
        return 1;
      case ItemBindStatus.BoundToAccount:
        return 2;
      case ItemBindStatus.BoundToGuild:
        return 3;
      default:
        return null;
    }
  }
}