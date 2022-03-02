import 'package:json_annotation/json_annotation.dart';

enum DestinyPresentationNodeType {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///Category = 1
  @JsonValue(1)
  Category,
  ///Collectibles = 2
  @JsonValue(2)
  Collectibles,
  ///Records = 3
  @JsonValue(3)
  Records,
  ///Metric = 4
  @JsonValue(4)
  Metric,
  ///Craftable = 5
  @JsonValue(5)
  Craftable,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyPresentationNodeTypeExtension on DestinyPresentationNodeType{
  int? get value {
    if (_$DestinyPresentationNodeTypeEnumMap.containsKey(this)){
      return _$DestinyPresentationNodeTypeEnumMap[this];
    }
    return null;
  }
}

DestinyPresentationNodeType? decodeDestinyPresentationNodeType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyPresentationNodeTypeValueMap.containsKey(value)){
    return _$DestinyPresentationNodeTypeValueMap[value];
  }

  return DestinyPresentationNodeType.ProtectedInvalidEnumValue;
}

int? encodeDestinyPresentationNodeType (DestinyPresentationNodeType? value) {
  return value?.value;
}

const Map<DestinyPresentationNodeType, int> _$DestinyPresentationNodeTypeEnumMap = <DestinyPresentationNodeType, int>{
    DestinyPresentationNodeType.Default:0,
    DestinyPresentationNodeType.Category:1,
    DestinyPresentationNodeType.Collectibles:2,
    DestinyPresentationNodeType.Records:3,
    DestinyPresentationNodeType.Metric:4,
    DestinyPresentationNodeType.Craftable:5,
};
const Map<int, DestinyPresentationNodeType> _$DestinyPresentationNodeTypeValueMap = <int, DestinyPresentationNodeType>{
    0:DestinyPresentationNodeType.Default,
    1:DestinyPresentationNodeType.Category,
    2:DestinyPresentationNodeType.Collectibles,
    3:DestinyPresentationNodeType.Records,
    4:DestinyPresentationNodeType.Metric,
    5:DestinyPresentationNodeType.Craftable,
};