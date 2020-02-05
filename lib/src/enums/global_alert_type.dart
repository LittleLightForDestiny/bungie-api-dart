import 'package:json_annotation/json_annotation.dart';

enum GlobalAlertType {
  ///GlobalAlert = 0
  @JsonValue(0)
  GlobalAlert,
  ///StreamingAlert = 1
  @JsonValue(1)
  StreamingAlert,
}

extension GlobalAlertTypeExtension on GlobalAlertType{
  int get value {
    switch(this){
      case GlobalAlertType.GlobalAlert:
        return 0;
      case GlobalAlertType.StreamingAlert:
        return 1;
      default:
        return null;
    }
  }
}