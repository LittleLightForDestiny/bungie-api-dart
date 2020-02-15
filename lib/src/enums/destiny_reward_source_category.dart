import 'package:json_annotation/json_annotation.dart';

enum DestinyRewardSourceCategory {
  ///None = 0
  /// The source doesn&#39;t fit well into any of the other types.
  @JsonValue(0)
  None,
  ///Activity = 1
  /// The source is directly related to the rewards gained by playing an activity or set of activities. This currently includes Quests and other action in-game.
  @JsonValue(1)
  Activity,
  ///Vendor = 2
  /// This source is directly related to items that Vendors sell.
  @JsonValue(2)
  Vendor,
  ///Aggregate = 3
  /// This source is a custom aggregation of items that can be earned in many ways, but that share some other property in common that is useful to share. For instance, in Destiny 1 we would make &quot;Reward Sources&quot; for every game expansion: that way, you could search reward sources to see what items became available with any given Expansion.
  @JsonValue(3)
  Aggregate,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyRewardSourceCategoryExtension on DestinyRewardSourceCategory{
  int get value {
    switch(this){
      case DestinyRewardSourceCategory.None:
        return 0;
      case DestinyRewardSourceCategory.Activity:
        return 1;
      case DestinyRewardSourceCategory.Vendor:
        return 2;
      case DestinyRewardSourceCategory.Aggregate:
        return 3;
      default:
        return null;
    }
  }
}