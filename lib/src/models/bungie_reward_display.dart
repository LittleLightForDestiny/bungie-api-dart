import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'user_reward_availability_model.dart';
import 'reward_display_properties.dart';

part 'bungie_reward_display.g.dart';

@JsonSerializable()
class BungieRewardDisplay{	
	BungieRewardDisplay();

	
	@JsonKey(name:'UserRewardAvailabilityModel')
	UserRewardAvailabilityModel? userRewardAvailabilityModel;
	
	@JsonKey(name:'ObjectiveDisplayProperties')
	RewardDisplayProperties? objectiveDisplayProperties;
	
	@JsonKey(name:'RewardDisplayProperties')
	RewardDisplayProperties? rewardDisplayProperties;

	factory BungieRewardDisplay.fromJson(Map<String, dynamic> json) {
		return _$BungieRewardDisplayFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$BungieRewardDisplayToJson(this);

	static Future<BungieRewardDisplay> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, BungieRewardDisplay>((json)=>BungieRewardDisplay.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}