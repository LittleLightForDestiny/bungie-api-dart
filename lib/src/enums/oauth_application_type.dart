import 'package:json_annotation/json_annotation.dart';

enum OAuthApplicationType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Confidential = 1
  /// Indicates the application is server based and can keep its secrets from end users and other potential snoops.
  @JsonValue(1)
  Confidential,
  ///Public = 2
  /// Indicates the application runs in a public place, and it can&#39;t be trusted to keep a secret.
  @JsonValue(2)
  Public,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension OAuthApplicationTypeExtension on OAuthApplicationType{
  int? get value {
    if (_$OAuthApplicationTypeEnumMap.containsKey(this)){
      return _$OAuthApplicationTypeEnumMap[this];
    }
    return null;
  }
}

OAuthApplicationType? decodeOAuthApplicationType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$OAuthApplicationTypeValueMap.containsKey(value)){
    return _$OAuthApplicationTypeValueMap[value];
  }

  return OAuthApplicationType.ProtectedInvalidEnumValue;
}

int? encodeOAuthApplicationType (OAuthApplicationType? value) {
  return value?.value;
}

const Map<OAuthApplicationType, int> _$OAuthApplicationTypeEnumMap = <OAuthApplicationType, int>{
    OAuthApplicationType.None:0,
    OAuthApplicationType.Confidential:1,
    OAuthApplicationType.Public:2,
};
const Map<int, OAuthApplicationType> _$OAuthApplicationTypeValueMap = <int, OAuthApplicationType>{
    0:OAuthApplicationType.None,
    1:OAuthApplicationType.Confidential,
    2:OAuthApplicationType.Public,
};