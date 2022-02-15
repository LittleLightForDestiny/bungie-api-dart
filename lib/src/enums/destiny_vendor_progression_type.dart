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
  ///NoSeasonalRefresh = 2
  /// A vendor progression with no seasonal refresh. For example: Xur in the Eternity destination for the 30th Anniversary.
  @JsonValue(2)
  NoSeasonalRefresh,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyVendorProgressionTypeExtension on DestinyVendorProgressionType{
  int? get value {
    if (_$DestinyVendorProgressionTypeEnumMap.containsKey(this)){
      return _$DestinyVendorProgressionTypeEnumMap[this];
    }
    return null;
  }
}

DestinyVendorProgressionType? decodeDestinyVendorProgressionType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyVendorProgressionTypeValueMap.containsKey(value)){
    return _$DestinyVendorProgressionTypeValueMap[value];
  }

  return DestinyVendorProgressionType.ProtectedInvalidEnumValue;
}

int? encodeDestinyVendorProgressionType (DestinyVendorProgressionType? value) {
  return value?.value;
}

const Map<DestinyVendorProgressionType, int> _$DestinyVendorProgressionTypeEnumMap = <DestinyVendorProgressionType, int>{
    DestinyVendorProgressionType.Default:0,
    DestinyVendorProgressionType.Ritual:1,
    DestinyVendorProgressionType.NoSeasonalRefresh:2,
};
const Map<int, DestinyVendorProgressionType> _$DestinyVendorProgressionTypeValueMap = <int, DestinyVendorProgressionType>{
    0:DestinyVendorProgressionType.Default,
    1:DestinyVendorProgressionType.Ritual,
    2:DestinyVendorProgressionType.NoSeasonalRefresh,
};