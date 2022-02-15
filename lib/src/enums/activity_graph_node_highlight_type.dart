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
    if (_$ActivityGraphNodeHighlightTypeEnumMap.containsKey(this)){
      return _$ActivityGraphNodeHighlightTypeEnumMap[this];
    }
    return null;
  }
}

ActivityGraphNodeHighlightType? decodeActivityGraphNodeHighlightType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ActivityGraphNodeHighlightTypeValueMap.containsKey(value)){
    return _$ActivityGraphNodeHighlightTypeValueMap[value];
  }

  return ActivityGraphNodeHighlightType.ProtectedInvalidEnumValue;
}

int? encodeActivityGraphNodeHighlightType (ActivityGraphNodeHighlightType? value) {
  return value?.value;
}

const Map<ActivityGraphNodeHighlightType, int> _$ActivityGraphNodeHighlightTypeEnumMap = <ActivityGraphNodeHighlightType, int>{
    ActivityGraphNodeHighlightType.None:0,
    ActivityGraphNodeHighlightType.Normal:1,
    ActivityGraphNodeHighlightType.Hyper:2,
    ActivityGraphNodeHighlightType.Comet:3,
    ActivityGraphNodeHighlightType.RiseOfIron:4,
};
const Map<int, ActivityGraphNodeHighlightType> _$ActivityGraphNodeHighlightTypeValueMap = <int, ActivityGraphNodeHighlightType>{
    0:ActivityGraphNodeHighlightType.None,
    1:ActivityGraphNodeHighlightType.Normal,
    2:ActivityGraphNodeHighlightType.Hyper,
    3:ActivityGraphNodeHighlightType.Comet,
    4:ActivityGraphNodeHighlightType.RiseOfIron,
};