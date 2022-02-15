import 'package:json_annotation/json_annotation.dart';

enum ItemBindStatus {
  ///NotBound = 0
  @JsonValue(0)
  NotBound,
  ///BoundToCharacter = 1
  @JsonValue(1)
  BoundToCharacter,
  ///BoundToAccount = 2
  @JsonValue(2)
  BoundToAccount,
  ///BoundToGuild = 3
  @JsonValue(3)
  BoundToGuild,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ItemBindStatusExtension on ItemBindStatus{
  int? get value {
    if (_$ItemBindStatusEnumMap.containsKey(this)){
      return _$ItemBindStatusEnumMap[this];
    }
    return null;
  }
}

ItemBindStatus? decodeItemBindStatus (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ItemBindStatusValueMap.containsKey(value)){
    return _$ItemBindStatusValueMap[value];
  }

  return ItemBindStatus.ProtectedInvalidEnumValue;
}

int? encodeItemBindStatus (ItemBindStatus? value) {
  return value?.value;
}

const Map<ItemBindStatus, int> _$ItemBindStatusEnumMap = <ItemBindStatus, int>{
    ItemBindStatus.NotBound:0,
    ItemBindStatus.BoundToCharacter:1,
    ItemBindStatus.BoundToAccount:2,
    ItemBindStatus.BoundToGuild:3,
};
const Map<int, ItemBindStatus> _$ItemBindStatusValueMap = <int, ItemBindStatus>{
    0:ItemBindStatus.NotBound,
    1:ItemBindStatus.BoundToCharacter,
    2:ItemBindStatus.BoundToAccount,
    3:ItemBindStatus.BoundToGuild,
};