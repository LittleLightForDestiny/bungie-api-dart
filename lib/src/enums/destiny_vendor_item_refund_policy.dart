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
    if (_$DestinyVendorItemRefundPolicyEnumMap.containsKey(this)){
      return _$DestinyVendorItemRefundPolicyEnumMap[this];
    }
    return null;
  }
}

DestinyVendorItemRefundPolicy? decodeDestinyVendorItemRefundPolicy (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyVendorItemRefundPolicyValueMap.containsKey(value)){
    return _$DestinyVendorItemRefundPolicyValueMap[value];
  }

  return DestinyVendorItemRefundPolicy.ProtectedInvalidEnumValue;
}

int? encodeDestinyVendorItemRefundPolicy (DestinyVendorItemRefundPolicy? value) {
  return value?.value;
}

const Map<DestinyVendorItemRefundPolicy, int> _$DestinyVendorItemRefundPolicyEnumMap = <DestinyVendorItemRefundPolicy, int>{
    DestinyVendorItemRefundPolicy.NotRefundable:0,
    DestinyVendorItemRefundPolicy.DeletesItem:1,
    DestinyVendorItemRefundPolicy.RevokesLicense:2,
};
const Map<int, DestinyVendorItemRefundPolicy> _$DestinyVendorItemRefundPolicyValueMap = <int, DestinyVendorItemRefundPolicy>{
    0:DestinyVendorItemRefundPolicy.NotRefundable,
    1:DestinyVendorItemRefundPolicy.DeletesItem,
    2:DestinyVendorItemRefundPolicy.RevokesLicense,
};