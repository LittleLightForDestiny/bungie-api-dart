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
    if (_$DestinyStatAggregationTypeEnumMap.containsKey(this)){
      return _$DestinyStatAggregationTypeEnumMap[this];
    }
    return null;
  }
}

DestinyStatAggregationType? decodeDestinyStatAggregationType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyStatAggregationTypeValueMap.containsKey(value)){
    return _$DestinyStatAggregationTypeValueMap[value];
  }

  return DestinyStatAggregationType.ProtectedInvalidEnumValue;
}

int? encodeDestinyStatAggregationType (DestinyStatAggregationType? value) {
  return value?.value;
}

const Map<DestinyStatAggregationType, int> _$DestinyStatAggregationTypeEnumMap = <DestinyStatAggregationType, int>{
    DestinyStatAggregationType.CharacterAverage:0,
    DestinyStatAggregationType.Character:1,
    DestinyStatAggregationType.Item:2,
};
const Map<int, DestinyStatAggregationType> _$DestinyStatAggregationTypeValueMap = <int, DestinyStatAggregationType>{
    0:DestinyStatAggregationType.CharacterAverage,
    1:DestinyStatAggregationType.Character,
    2:DestinyStatAggregationType.Item,
};