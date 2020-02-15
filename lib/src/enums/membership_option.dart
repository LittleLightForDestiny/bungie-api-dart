import 'package:json_annotation/json_annotation.dart';

enum MembershipOption {
  ///Reviewed = 0
  @JsonValue(0)
  Reviewed,
  ///Open = 1
  @JsonValue(1)
  Open,
  ///Closed = 2
  @JsonValue(2)
  Closed,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension MembershipOptionExtension on MembershipOption{
  int get value {
    switch(this){
      case MembershipOption.Reviewed:
        return 0;
      case MembershipOption.Open:
        return 1;
      case MembershipOption.Closed:
        return 2;
      default:
        return null;
    }
  }
}