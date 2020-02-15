import 'package:json_annotation/json_annotation.dart';

enum PartnershipType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Twitch = 1
  @JsonValue(1)
  Twitch,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension PartnershipTypeExtension on PartnershipType{
  int get value {
    switch(this){
      case PartnershipType.None:
        return 0;
      case PartnershipType.Twitch:
        return 1;
      default:
        return null;
    }
  }
}