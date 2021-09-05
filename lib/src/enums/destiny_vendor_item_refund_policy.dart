import 'package:json_annotation/json_annotation.dart';

enum DestinyVendorItemRefundPolicy {
  ///NotRefundable = 0
  @JsonValue(0)
  NotRefundable,
  ///DeletesItem = 1
  @JsonValue(1)
  DeletesItem,
  ///RevokesLicense = 2
  @JsonValue(2)
  RevokesLicense,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorItemRefundPolicyExtension on DestinyVendorItemRefundPolicy{
  int? get value {
    switch(this){
      case DestinyVendorItemRefundPolicy.NotRefundable:
        return 0;
      case DestinyVendorItemRefundPolicy.DeletesItem:
        return 1;
      case DestinyVendorItemRefundPolicy.RevokesLicense:
        return 2;
      default:
        return null;
    }
  }
}