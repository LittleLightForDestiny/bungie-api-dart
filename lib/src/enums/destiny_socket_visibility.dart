import 'package:json_annotation/json_annotation.dart';

enum DestinySocketVisibility {
  ///Visible = 0
  @JsonValue(0)
  Visible,
  ///Hidden = 1
  @JsonValue(1)
  Hidden,
  ///HiddenWhenEmpty = 2
  @JsonValue(2)
  HiddenWhenEmpty,
  ///HiddenIfNoPlugsAvailable = 3
  @JsonValue(3)
  HiddenIfNoPlugsAvailable,
}

extension DestinySocketVisibilityExtension on DestinySocketVisibility{
  int get value {
    switch(this){
      case DestinySocketVisibility.Visible:
        return 0;
      case DestinySocketVisibility.Hidden:
        return 1;
      case DestinySocketVisibility.HiddenWhenEmpty:
        return 2;
      case DestinySocketVisibility.HiddenIfNoPlugsAvailable:
        return 3;
      default:
        return null;
    }
  }
}