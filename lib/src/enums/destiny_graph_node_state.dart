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
  int get value {
    switch(this){
      case DestinyGraphNodeState.Hidden:
        return 0;
      case DestinyGraphNodeState.Visible:
        return 1;
      case DestinyGraphNodeState.Teaser:
        return 2;
      case DestinyGraphNodeState.Incomplete:
        return 3;
      case DestinyGraphNodeState.Completed:
        return 4;
      default:
        return null;
    }
  }
}