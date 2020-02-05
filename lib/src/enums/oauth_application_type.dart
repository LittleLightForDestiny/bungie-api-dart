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
}

extension OAuthApplicationTypeExtension on OAuthApplicationType{
  int get value {
    switch(this){
      case OAuthApplicationType.None:
        return 0;
      case OAuthApplicationType.Confidential:
        return 1;
      case OAuthApplicationType.Public:
        return 2;
      default:
        return null;
    }
  }
}