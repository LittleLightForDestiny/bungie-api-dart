import 'package:json_annotation/json_annotation.dart';

enum DestinyRecordToastStyle {
  ///None = 0
  @JsonValue(0)
  None,
  ///Record = 1
  @JsonValue(1)
  Record,
  ///Lore = 2
  @JsonValue(2)
  Lore,
  ///Badge = 3
  @JsonValue(3)
  Badge,
  ///MetaRecord = 4
  @JsonValue(4)
  MetaRecord,
  ///MedalComplete = 5
  @JsonValue(5)
  MedalComplete,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyRecordToastStyleExtension on DestinyRecordToastStyle{
  int get value {
    switch(this){
      case DestinyRecordToastStyle.None:
        return 0;
      case DestinyRecordToastStyle.Record:
        return 1;
      case DestinyRecordToastStyle.Lore:
        return 2;
      case DestinyRecordToastStyle.Badge:
        return 3;
      case DestinyRecordToastStyle.MetaRecord:
        return 4;
      case DestinyRecordToastStyle.MedalComplete:
        return 5;
      default:
        return null;
    }
  }
}