import 'package:json_annotation/json_annotation.dart';

enum GroupAllianceStatus {
  ///Unallied = 0
  @JsonValue(0)
  Unallied,
  ///Parent = 1
  @JsonValue(1)
  Parent,
  ///Child = 2
  @JsonValue(2)
  Child,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupAllianceStatusExtension on GroupAllianceStatus{
  int? get value {
    switch(this){
      case GroupAllianceStatus.Unallied:
        return 0;
      case GroupAllianceStatus.Parent:
        return 1;
      case GroupAllianceStatus.Child:
        return 2;
      default:
        return null;
    }
  }
}