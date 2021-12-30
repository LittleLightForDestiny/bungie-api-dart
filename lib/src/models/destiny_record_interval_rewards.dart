import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_quantity.dart';

part 'destiny_record_interval_rewards.g.dart';

@JsonSerializable()
class DestinyRecordIntervalRewards{	
	DestinyRecordIntervalRewards();

	factory DestinyRecordIntervalRewards.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordIntervalRewardsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalRewardsToJson(this);
	
	@JsonKey(name:'intervalRewardItems')
	List<DestinyItemQuantity>? intervalRewardItems;
}