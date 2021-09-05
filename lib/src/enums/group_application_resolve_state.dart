import 'package:json_annotation/json_annotation.dart';

enum GroupApplicationResolveState {
  ///Unresolved = 0
  @JsonValue(0)
  Unresolved,
  ///Accepted = 1
  @JsonValue(1)
  Accepted,
  ///Denied = 2
  @JsonValue(2)
  Denied,
  ///Rescinded = 3
  @JsonValue(3)
  Rescinded,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupApplicationResolveStateExtension on GroupApplicationResolveState{
  int? get value {
    switch(this){
      case GroupApplicationResolveState.Unresolved:
        return 0;
      case GroupApplicationResolveState.Accepted:
        return 1;
      case GroupApplicationResolveState.Denied:
        return 2;
      case GroupApplicationResolveState.Rescinded:
        return 3;
      default:
        return null;
    }
  }
}