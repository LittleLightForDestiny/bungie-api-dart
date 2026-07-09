import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_activity_reward_display_mode.dart';
import 'destiny_activity_reward_item.dart';

part 'destiny_activity_reward_mapping.g.dart';

@JsonSerializable()
class DestinyActivityRewardMapping{	
	DestinyActivityRewardMapping();

	
	@JsonKey(name:'displayBehavior',fromJson:decodeDestinyActivityRewardDisplayMode,toJson:encodeDestinyActivityRewardDisplayMode)
	DestinyActivityRewardDisplayMode? displayBehavior;
	
	@JsonKey(name:'rewardItems')
	List<DestinyActivityRewardItem>? rewardItems;

	factory DestinyActivityRewardMapping.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityRewardMappingFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityRewardMappingToJson(this);

	static Future<DestinyActivityRewardMapping> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityRewardMapping>((json)=>DestinyActivityRewardMapping.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}