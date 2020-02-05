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
}

extension PlugAvailabilityModeExtension on PlugAvailabilityMode{
  int get value {
    switch(this){
      case PlugAvailabilityMode.Normal:
        return 0;
      case PlugAvailabilityMode.UnavailableIfSocketContainsMatchingPlugCategory:
        return 1;
      case PlugAvailabilityMode.AvailableIfSocketContainsMatchingPlugCategory:
        return 2;
      default:
        return null;
    }
  }
}