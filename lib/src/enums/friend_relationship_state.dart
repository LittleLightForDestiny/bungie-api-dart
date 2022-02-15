import 'package:json_annotation/json_annotation.dart';

enum FriendRelationshipState {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Friend = 1
  @JsonValue(1)
  Friend,
  ///IncomingRequest = 2
  @JsonValue(2)
  IncomingRequest,
  ///OutgoingRequest = 3
  @JsonValue(3)
  OutgoingRequest,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FriendRelationshipStateExtension on FriendRelationshipState{
  int? get value {
    if (_$FriendRelationshipStateEnumMap.containsKey(this)){
      return _$FriendRelationshipStateEnumMap[this];
    }
    return null;
  }
}

FriendRelationshipState? decodeFriendRelationshipState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FriendRelationshipStateValueMap.containsKey(value)){
    return _$FriendRelationshipStateValueMap[value];
  }

  return FriendRelationshipState.ProtectedInvalidEnumValue;
}

int? encodeFriendRelationshipState (FriendRelationshipState? value) {
  return value?.value;
}

const Map<FriendRelationshipState, int> _$FriendRelationshipStateEnumMap = <FriendRelationshipState, int>{
    FriendRelationshipState.Unknown:0,
    FriendRelationshipState.Friend:1,
    FriendRelationshipState.IncomingRequest:2,
    FriendRelationshipState.OutgoingRequest:3,
};
const Map<int, FriendRelationshipState> _$FriendRelationshipStateValueMap = <int, FriendRelationshipState>{
    0:FriendRelationshipState.Unknown,
    1:FriendRelationshipState.Friend,
    2:FriendRelationshipState.IncomingRequest,
    3:FriendRelationshipState.OutgoingRequest,
};