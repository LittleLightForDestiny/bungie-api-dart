import 'package:json_annotation/json_annotation.dart';

enum PlugAvailabilityMode {
  ///Normal = 0
  @JsonValue(0)
  Normal,
  ///UnavailableIfSocketContainsMatchingPlugCategory = 1
  @JsonValue(1)
  UnavailableIfSocketContainsMatchingPlugCategory,
  ///AvailableIfSocketContainsMatchingPlugCategory = 2
  @JsonValue(2)
  AvailableIfSocketContainsMatchingPlugCategory,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension PlugAvailabilityModeExtension on PlugAvailabilityMode{
  int? get value {
    if (_$PlugAvailabilityModeEnumMap.containsKey(this)){
      return _$PlugAvailabilityModeEnumMap[this];
    }
    return null;
  }
}

PlugAvailabilityMode? decodePlugAvailabilityMode (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$PlugAvailabilityModeValueMap.containsKey(value)){
    return _$PlugAvailabilityModeValueMap[value];
  }

  return PlugAvailabilityMode.ProtectedInvalidEnumValue;
}

int? encodePlugAvailabilityMode (PlugAvailabilityMode? value) {
  return value?.value;
}

const Map<PlugAvailabilityMode, int> _$PlugAvailabilityModeEnumMap = <PlugAvailabilityMode, int>{
    PlugAvailabilityMode.Normal:0,
    PlugAvailabilityMode.UnavailableIfSocketContainsMatchingPlugCategory:1,
    PlugAvailabilityMode.AvailableIfSocketContainsMatchingPlugCategory:2,
};
const Map<int, PlugAvailabilityMode> _$PlugAvailabilityModeValueMap = <int, PlugAvailabilityMode>{
    0:PlugAvailabilityMode.Normal,
    1:PlugAvailabilityMode.UnavailableIfSocketContainsMatchingPlugCategory,
    2:PlugAvailabilityMode.AvailableIfSocketContainsMatchingPlugCategory,
};