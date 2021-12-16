import 'package:json_annotation/json_annotation.dart';

enum DestinyStatAggregationType {
  ///CharacterAverage = 0
  @JsonValue(0)
  CharacterAverage,
  ///Character = 1
  @JsonValue(1)
  Character,
  ///Item = 2
  @JsonValue(2)
  Item,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyStatAggregationTypeExtension on DestinyStatAggregationType{
  int? get value {
    switch(this){
      case DestinyStatAggregationType.CharacterAverage:
        return 0;
      case DestinyStatAggregationType.Character:
        return 1;
      case DestinyStatAggregationType.Item:
        return 2;
      default:
        return null;
    }
  }
}