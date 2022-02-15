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
  int? get value {
    if (_$MembershipOptionEnumMap.containsKey(this)){
      return _$MembershipOptionEnumMap[this];
    }
    return null;
  }
}

MembershipOption? decodeMembershipOption (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$MembershipOptionValueMap.containsKey(value)){
    return _$MembershipOptionValueMap[value];
  }

  return MembershipOption.ProtectedInvalidEnumValue;
}

int? encodeMembershipOption (MembershipOption? value) {
  return value?.value;
}

const Map<MembershipOption, int> _$MembershipOptionEnumMap = <MembershipOption, int>{
    MembershipOption.Reviewed:0,
    MembershipOption.Open:1,
    MembershipOption.Closed:2,
};
const Map<int, MembershipOption> _$MembershipOptionValueMap = <int, MembershipOption>{
    0:MembershipOption.Reviewed,
    1:MembershipOption.Open,
    2:MembershipOption.Closed,
};