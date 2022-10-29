import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_quantity.dart';

part 'destiny_record_interval_rewards.g.dart';

@JsonSerializable()
class DestinyRecordIntervalRewards{	
	DestinyRecordIntervalRewards();

	
	@JsonKey(name:'intervalRewardItems')
	List<DestinyItemQuantity>? intervalRewardItems;

	factory DestinyRecordIntervalRewards.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordIntervalRewardsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalRewardsToJson(this);

	static Future<DestinyRecordIntervalRewards> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordIntervalRewards>((json)=>DestinyRecordIntervalRewards.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}