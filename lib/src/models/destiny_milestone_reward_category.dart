import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_milestone_reward_entry.dart';

part 'destiny_milestone_reward_category.g.dart';

/// Represents a category of &quot;summary&quot; rewards that can be earned for the Milestone regardless of specific quest rewards that can be earned.
@JsonSerializable()
class DestinyMilestoneRewardCategory{	
	DestinyMilestoneRewardCategory();

	
	/// Look up the relevant DestinyMilestoneDefinition, and then use rewardCategoryHash to look up the category info in DestinyMilestoneDefinition.rewards.
	@JsonKey(name:'rewardCategoryHash')
	int? rewardCategoryHash;
	
	/// The individual reward entries for this category, and their status.
	@JsonKey(name:'entries')
	List<DestinyMilestoneRewardEntry>? entries;

	factory DestinyMilestoneRewardCategory.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneRewardCategoryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneRewardCategoryToJson(this);

	static Future<DestinyMilestoneRewardCategory> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneRewardCategory>((json)=>DestinyMilestoneRewardCategory.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}