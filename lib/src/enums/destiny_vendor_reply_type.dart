import 'package:json_annotation/json_annotation.dart';

enum DestinyVendorReplyType {
  ///Accept = 0
  @JsonValue(0)
  Accept,
  ///Decline = 1
  @JsonValue(1)
  Decline,
  ///Complete = 2
  @JsonValue(2)
  Complete,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorReplyTypeExtension on DestinyVendorReplyType{
  int? get value {
    switch(this){
      case DestinyVendorReplyType.Accept:
        return 0;
      case DestinyVendorReplyType.Decline:
        return 1;
      case DestinyVendorReplyType.Complete:
        return 2;
      default:
        return null;
    }
  }
}