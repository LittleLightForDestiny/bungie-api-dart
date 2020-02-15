import 'package:json_annotation/json_annotation.dart';

enum AwaType {
  ///None = 0
  @JsonValue(0)
  None,
  ///InsertPlugs = 1
  /// Insert plugs into sockets.
  @JsonValue(1)
  InsertPlugs,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension AwaTypeExtension on AwaType{
  int get value {
    switch(this){
      case AwaType.None:
        return 0;
      case AwaType.InsertPlugs:
        return 1;
      default:
        return null;
    }
  }
}