import 'package:json_annotation/json_annotation.dart';

enum DestinyVendorProgressionType {
  ///Default = 0
  /// The original rank progression from token redemption.
  @JsonValue(0)
  Default,
  ///Ritual = 1
  /// Progression from ranks in ritual content. For example: Crucible (Shaxx), Gambit (Drifter), and Season 13 Battlegrounds (War Table).
  @JsonValue(1)
  Ritual,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorProgressionTypeExtension on DestinyVendorProgressionType{
  int get value {
    switch(this){
      case DestinyVendorProgressionType.Default:
        return 0;
      case DestinyVendorProgressionType.Ritual:
        return 1;
      default:
        return null;
    }
  }
}