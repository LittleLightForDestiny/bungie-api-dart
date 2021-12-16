import 'package:json_annotation/json_annotation.dart';

enum FireteamSlotSearch {
  ///NoSlotRestriction = 0
  @JsonValue(0)
  NoSlotRestriction,
  ///HasOpenPlayerSlots = 1
  @JsonValue(1)
  HasOpenPlayerSlots,
  ///HasOpenPlayerOrAltSlots = 2
  @JsonValue(2)
  HasOpenPlayerOrAltSlots,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamSlotSearchExtension on FireteamSlotSearch{
  int? get value {
    switch(this){
      case FireteamSlotSearch.NoSlotRestriction:
        return 0;
      case FireteamSlotSearch.HasOpenPlayerSlots:
        return 1;
      case FireteamSlotSearch.HasOpenPlayerOrAltSlots:
        return 2;
      default:
        return null;
    }
  }
}