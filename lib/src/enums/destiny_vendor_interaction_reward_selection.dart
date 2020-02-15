import 'package:json_annotation/json_annotation.dart';

enum DestinyVendorInteractionRewardSelection {
  ///None = 0
  @JsonValue(0)
  None,
  ///One = 1
  @JsonValue(1)
  One,
  ///All = 2
  @JsonValue(2)
  All,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorInteractionRewardSelectionExtension on DestinyVendorInteractionRewardSelection{
  int get value {
    switch(this){
      case DestinyVendorInteractionRewardSelection.None:
        return 0;
      case DestinyVendorInteractionRewardSelection.One:
        return 1;
      case DestinyVendorInteractionRewardSelection.All:
        return 2;
      default:
        return null;
    }
  }
}