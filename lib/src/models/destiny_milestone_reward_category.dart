import 'package:json_annotation/json_annotation.dart';

import 'destiny_milestone_reward_entry.dart';

part 'destiny_milestone_reward_category.g.dart';

/// Represents a category of &quot;summary&quot; rewards that can be earned for the Milestone regardless of specific quest rewards that can be earned.
@JsonSerializable()
class DestinyMilestoneRewardCategory{
	
	DestinyMilestoneRewardCategory();

	factory DestinyMilestoneRewardCategory.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyMilestoneRewardCategoryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Look up the relevant DestinyMilestoneDefinition, and then use rewardCategoryHash to look up the category info in DestinyMilestoneDefinition.rewards.
	@JsonKey(name:'rewardCategoryHash')
	int rewardCategoryHash;
	/// The individual reward entries for this category, and their status.
	@JsonKey(name:'entries')
	List<DestinyMilestoneRewardEntry> entries;

	
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneRewardCategoryToJson(this);
}