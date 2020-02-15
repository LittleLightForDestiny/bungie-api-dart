import 'package:json_annotation/json_annotation.dart';

enum DestinyScope {
  ///Profile = 0
  @JsonValue(0)
  Profile,
  ///Character = 1
  @JsonValue(1)
  Character,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyScopeExtension on DestinyScope{
  int get value {
    switch(this){
      case DestinyScope.Profile:
        return 0;
      case DestinyScope.Character:
        return 1;
      default:
        return null;
    }
  }
}