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
}

extension DestinyItemSortTypeExtension on DestinyItemSortType{
  int get value {
    switch(this){
      case DestinyItemSortType.ItemId:
        return 0;
      case DestinyItemSortType.Timestamp:
        return 1;
      case DestinyItemSortType.StackSize:
        return 2;
      default:
        return null;
    }
  }
}