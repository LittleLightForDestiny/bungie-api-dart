import 'package:json_annotation/json_annotation.dart';

enum SocketTypeActionType {
  ///InsertPlug = 0
  @JsonValue(0)
  InsertPlug,
  ///InfuseItem = 1
  @JsonValue(1)
  InfuseItem,
  ///ReinitializeSocket = 2
  @JsonValue(2)
  ReinitializeSocket,
}

extension SocketTypeActionTypeExtension on SocketTypeActionType{
  int get value {
    switch(this){
      case SocketTypeActionType.InsertPlug:
        return 0;
      case SocketTypeActionType.InfuseItem:
        return 1;
      case SocketTypeActionType.ReinitializeSocket:
        return 2;
      default:
        return null;
    }
  }
}