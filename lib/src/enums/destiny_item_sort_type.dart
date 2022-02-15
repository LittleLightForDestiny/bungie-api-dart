import 'package:json_annotation/json_annotation.dart';

enum DestinyItemSortType {
  ///ItemId = 0
  @JsonValue(0)
  ItemId,
  ///Timestamp = 1
  @JsonValue(1)
  Timestamp,
  ///StackSize = 2
  @JsonValue(2)
  StackSize,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyItemSortTypeExtension on DestinyItemSortType{
  int? get value {
    if (_$DestinyItemSortTypeEnumMap.containsKey(this)){
      return _$DestinyItemSortTypeEnumMap[this];
    }
    return null;
  }
}

DestinyItemSortType? decodeDestinyItemSortType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyItemSortTypeValueMap.containsKey(value)){
    return _$DestinyItemSortTypeValueMap[value];
  }

  return DestinyItemSortType.ProtectedInvalidEnumValue;
}

int? encodeDestinyItemSortType (DestinyItemSortType? value) {
  return value?.value;
}

const Map<DestinyItemSortType, int> _$DestinyItemSortTypeEnumMap = <DestinyItemSortType, int>{
    DestinyItemSortType.ItemId:0,
    DestinyItemSortType.Timestamp:1,
    DestinyItemSortType.StackSize:2,
};
const Map<int, DestinyItemSortType> _$DestinyItemSortTypeValueMap = <int, DestinyItemSortType>{
    0:DestinyItemSortType.ItemId,
    1:DestinyItemSortType.Timestamp,
    2:DestinyItemSortType.StackSize,
};