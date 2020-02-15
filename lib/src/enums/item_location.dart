import 'package:json_annotation/json_annotation.dart';

enum ItemLocation {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Inventory = 1
  @JsonValue(1)
  Inventory,
  ///Vault = 2
  @JsonValue(2)
  Vault,
  ///Vendor = 3
  @JsonValue(3)
  Vendor,
  ///Postmaster = 4
  @JsonValue(4)
  Postmaster,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ItemLocationExtension on ItemLocation{
  int get value {
    switch(this){
      case ItemLocation.Unknown:
        return 0;
      case ItemLocation.Inventory:
        return 1;
      case ItemLocation.Vault:
        return 2;
      case ItemLocation.Vendor:
        return 3;
      case ItemLocation.Postmaster:
        return 4;
      default:
        return null;
    }
  }
}