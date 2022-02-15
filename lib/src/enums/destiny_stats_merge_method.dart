import 'package:json_annotation/json_annotation.dart';

enum DestinyStatsMergeMethod {
  ///Add = 0
  /// When collapsing multiple instances of the stat together, add the values.
  @JsonValue(0)
  Add,
  ///Min = 1
  /// When collapsing multiple instances of the stat together, take the lower value.
  @JsonValue(1)
  Min,
  ///Max = 2
  /// When collapsing multiple instances of the stat together, take the higher value.
  @JsonValue(2)
  Max,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyStatsMergeMethodExtension on DestinyStatsMergeMethod{
  int? get value {
    if (_$DestinyStatsMergeMethodEnumMap.containsKey(this)){
      return _$DestinyStatsMergeMethodEnumMap[this];
    }
    return null;
  }
}

DestinyStatsMergeMethod? decodeDestinyStatsMergeMethod (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyStatsMergeMethodValueMap.containsKey(value)){
    return _$DestinyStatsMergeMethodValueMap[value];
  }

  return DestinyStatsMergeMethod.ProtectedInvalidEnumValue;
}

int? encodeDestinyStatsMergeMethod (DestinyStatsMergeMethod? value) {
  return value?.value;
}

const Map<DestinyStatsMergeMethod, int> _$DestinyStatsMergeMethodEnumMap = <DestinyStatsMergeMethod, int>{
    DestinyStatsMergeMethod.Add:0,
    DestinyStatsMergeMethod.Min:1,
    DestinyStatsMergeMethod.Max:2,
};
const Map<int, DestinyStatsMergeMethod> _$DestinyStatsMergeMethodValueMap = <int, DestinyStatsMergeMethod>{
    0:DestinyStatsMergeMethod.Add,
    1:DestinyStatsMergeMethod.Min,
    2:DestinyStatsMergeMethod.Max,
};