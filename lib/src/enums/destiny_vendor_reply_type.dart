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
    if (_$DestinyVendorReplyTypeEnumMap.containsKey(this)){
      return _$DestinyVendorReplyTypeEnumMap[this];
    }
    return null;
  }
}

DestinyVendorReplyType? decodeDestinyVendorReplyType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyVendorReplyTypeValueMap.containsKey(value)){
    return _$DestinyVendorReplyTypeValueMap[value];
  }

  return DestinyVendorReplyType.ProtectedInvalidEnumValue;
}

int? encodeDestinyVendorReplyType (DestinyVendorReplyType? value) {
  return value?.value;
}

const Map<DestinyVendorReplyType, int> _$DestinyVendorReplyTypeEnumMap = <DestinyVendorReplyType, int>{
    DestinyVendorReplyType.Accept:0,
    DestinyVendorReplyType.Decline:1,
    DestinyVendorReplyType.Complete:2,
};
const Map<int, DestinyVendorReplyType> _$DestinyVendorReplyTypeValueMap = <int, DestinyVendorReplyType>{
    0:DestinyVendorReplyType.Accept,
    1:DestinyVendorReplyType.Decline,
    2:DestinyVendorReplyType.Complete,
};