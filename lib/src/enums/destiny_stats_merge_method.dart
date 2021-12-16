import 'package:json_annotation/json_annotation.dart';

enum DestinyStatsMergeMethod {
  ///Add = 0
  /// When collapsing multiple instances of the stat together, add the values.
  @JsonValue(0)
  Add,
  ///Min = 1
  /// When collapsing multiple instances of the stat together, take the lower value.
  @JsonValue(1)
  Min,
  ///Max = 2
  /// When collapsing multiple instances of the stat together, take the higher value.
  @JsonValue(2)
  Max,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyStatsMergeMethodExtension on DestinyStatsMergeMethod{
  int? get value {
    switch(this){
      case DestinyStatsMergeMethod.Add:
        return 0;
      case DestinyStatsMergeMethod.Min:
        return 1;
      case DestinyStatsMergeMethod.Max:
        return 2;
      default:
        return null;
    }
  }
}