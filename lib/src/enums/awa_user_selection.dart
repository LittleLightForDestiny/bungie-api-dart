import 'package:json_annotation/json_annotation.dart';

enum AwaUserSelection {
  ///None = 0
  @JsonValue(0)
  None,
  ///Rejected = 1
  @JsonValue(1)
  Rejected,
  ///Approved = 2
  @JsonValue(2)
  Approved,
}

extension AwaUserSelectionExtension on AwaUserSelection{
  int get value {
    switch(this){
      case AwaUserSelection.None:
        return 0;
      case AwaUserSelection.Rejected:
        return 1;
      case AwaUserSelection.Approved:
        return 2;
      default:
        return null;
    }
  }
}