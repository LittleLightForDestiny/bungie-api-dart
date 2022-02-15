import 'package:json_annotation/json_annotation.dart';

enum DestinyGraphNodeState {
  ///Hidden = 0
  @JsonValue(0)
  Hidden,
  ///Visible = 1
  @JsonValue(1)
  Visible,
  ///Teaser = 2
  @JsonValue(2)
  Teaser,
  ///Incomplete = 3
  @JsonValue(3)
  Incomplete,
  ///Completed = 4
  @JsonValue(4)
  Completed,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyGraphNodeStateExtension on DestinyGraphNodeState{
  int? get value {
    if (_$DestinyGraphNodeStateEnumMap.containsKey(this)){
      return _$DestinyGraphNodeStateEnumMap[this];
    }
    return null;
  }
}

DestinyGraphNodeState? decodeDestinyGraphNodeState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyGraphNodeStateValueMap.containsKey(value)){
    return _$DestinyGraphNodeStateValueMap[value];
  }

  return DestinyGraphNodeState.ProtectedInvalidEnumValue;
}

int? encodeDestinyGraphNodeState (DestinyGraphNodeState? value) {
  return value?.value;
}

const Map<DestinyGraphNodeState, int> _$DestinyGraphNodeStateEnumMap = <DestinyGraphNodeState, int>{
    DestinyGraphNodeState.Hidden:0,
    DestinyGraphNodeState.Visible:1,
    DestinyGraphNodeState.Teaser:2,
    DestinyGraphNodeState.Incomplete:3,
    DestinyGraphNodeState.Completed:4,
};
const Map<int, DestinyGraphNodeState> _$DestinyGraphNodeStateValueMap = <int, DestinyGraphNodeState>{
    0:DestinyGraphNodeState.Hidden,
    1:DestinyGraphNodeState.Visible,
    2:DestinyGraphNodeState.Teaser,
    3:DestinyGraphNodeState.Incomplete,
    4:DestinyGraphNodeState.Completed,
};