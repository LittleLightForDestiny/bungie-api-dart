import 'package:json_annotation/json_annotation.dart';

enum FireteamPublicSearchOption {
  ///PublicAndPrivate = 0
  @JsonValue(0)
  PublicAndPrivate,
  ///PublicOnly = 1
  @JsonValue(1)
  PublicOnly,
  ///PrivateOnly = 2
  @JsonValue(2)
  PrivateOnly,
}

extension FireteamPublicSearchOptionExtension on FireteamPublicSearchOption{
  int get value {
    switch(this){
      case FireteamPublicSearchOption.PublicAndPrivate:
        return 0;
      case FireteamPublicSearchOption.PublicOnly:
        return 1;
      case FireteamPublicSearchOption.PrivateOnly:
        return 2;
      default:
        return null;
    }
  }
}