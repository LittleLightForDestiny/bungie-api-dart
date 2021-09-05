import 'package:json_annotation/json_annotation.dart';

enum ActivityGraphNodeHighlightType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Normal = 1
  @JsonValue(1)
  Normal,
  ///Hyper = 2
  @JsonValue(2)
  Hyper,
  ///Comet = 3
  @JsonValue(3)
  Comet,
  ///RiseOfIron = 4
  @JsonValue(4)
  RiseOfIron,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ActivityGraphNodeHighlightTypeExtension on ActivityGraphNodeHighlightType{
  int? get value {
    switch(this){
      case ActivityGraphNodeHighlightType.None:
        return 0;
      case ActivityGraphNodeHighlightType.Normal:
        return 1;
      case ActivityGraphNodeHighlightType.Hyper:
        return 2;
      case ActivityGraphNodeHighlightType.Comet:
        return 3;
      case ActivityGraphNodeHighlightType.RiseOfIron:
        return 4;
      default:
        return null;
    }
  }
}