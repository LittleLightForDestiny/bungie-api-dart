import 'package:json_annotation/json_annotation.dart';

enum VendorDisplayCategorySortOrder {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///SortByTier = 1
  @JsonValue(1)
  SortByTier,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension VendorDisplayCategorySortOrderExtension on VendorDisplayCategorySortOrder{
  int get value {
    switch(this){
      case VendorDisplayCategorySortOrder.Default:
        return 0;
      case VendorDisplayCategorySortOrder.SortByTier:
        return 1;
      default:
        return null;
    }
  }
}