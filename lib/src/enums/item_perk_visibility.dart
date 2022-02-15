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
    if (_$ItemPerkVisibilityEnumMap.containsKey(this)){
      return _$ItemPerkVisibilityEnumMap[this];
    }
    return null;
  }
}

ItemPerkVisibility? decodeItemPerkVisibility (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ItemPerkVisibilityValueMap.containsKey(value)){
    return _$ItemPerkVisibilityValueMap[value];
  }

  return ItemPerkVisibility.ProtectedInvalidEnumValue;
}

int? encodeItemPerkVisibility (ItemPerkVisibility? value) {
  return value?.value;
}

const Map<ItemPerkVisibility, int> _$ItemPerkVisibilityEnumMap = <ItemPerkVisibility, int>{
    ItemPerkVisibility.Visible:0,
    ItemPerkVisibility.Disabled:1,
    ItemPerkVisibility.Hidden:2,
};
const Map<int, ItemPerkVisibility> _$ItemPerkVisibilityValueMap = <int, ItemPerkVisibility>{
    0:ItemPerkVisibility.Visible,
    1:ItemPerkVisibility.Disabled,
    2:ItemPerkVisibility.Hidden,
};