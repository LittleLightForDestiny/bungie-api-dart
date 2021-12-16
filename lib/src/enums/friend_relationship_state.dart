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
    switch(this){
      case FriendRelationshipState.Unknown:
        return 0;
      case FriendRelationshipState.Friend:
        return 1;
      case FriendRelationshipState.IncomingRequest:
        return 2;
      case FriendRelationshipState.OutgoingRequest:
        return 3;
      default:
        return null;
    }
  }
}