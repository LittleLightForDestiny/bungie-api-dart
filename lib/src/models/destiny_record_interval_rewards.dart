import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_quantity.dart';

part 'destiny_record_interval_rewards.g.dart';

@JsonSerializable()
class DestinyRecordIntervalRewards{
	
	DestinyRecordIntervalRewards();

	factory DestinyRecordIntervalRewards.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyRecordIntervalRewardsFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'intervalRewardItems')
	List<DestinyItemQuantity> intervalRewardItems;

	
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalRewardsToJson(this);
}