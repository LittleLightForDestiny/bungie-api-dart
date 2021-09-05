import 'package:json_annotation/json_annotation.dart';

enum ItemPerkVisibility {
  ///Visible = 0
  @JsonValue(0)
  Visible,
  ///Disabled = 1
  @JsonValue(1)
  Disabled,
  ///Hidden = 2
  @JsonValue(2)
  Hidden,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ItemPerkVisibilityExtension on ItemPerkVisibility{
  int? get value {
    switch(this){
      case ItemPerkVisibility.Visible:
        return 0;
      case ItemPerkVisibility.Disabled:
        return 1;
      case ItemPerkVisibility.Hidden:
        return 2;
      default:
        return null;
    }
  }
}