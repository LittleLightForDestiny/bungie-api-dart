import 'destiny_quest_status.dart';
import 'destiny_milestone_activity.dart';
import 'destiny_challenge_status.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_quest.g.dart';

/// If a Milestone has one or more Quests, this will contain the live information for the character&#39;s status with one of those quests.
@JsonSerializable()
class DestinyMilestoneQuest {

	/// Quests are defined as Items in content. As such, this is the hash identifier of the DestinyInventoryItemDefinition that represents this quest. It will have pointers to all of the steps in the quest, and display information for the quest (title, description, icon etc) Individual steps will be referred to in the Quest item&#39;s DestinyInventoryItemDefinition.setData property, and themselves are Items with their own renderable data.
	@JsonKey(name:'questItemHash')
	int questItemHash;

	/// The current status of the quest for the character making the request.
	@JsonKey(name:'status')
	DestinyQuestStatus status;

	/// *IF* the Milestone has an active Activity that can give you greater details about what you need to do, it will be returned here. Remember to associate this with the DestinyMilestoneDefinition&#39;s activities to get details about the activity, including what specific quest it is related to if you have multiple quests to choose from.
	@JsonKey(name:'activity')
	DestinyMilestoneActivity activity;

	/// The activities referred to by this quest can have many associated challenges. They are all contained here, with activityHashes so that you can associate them with the specific activity variants in which they can be found. In retrospect, I probably should have put these under the specific Activity Variants, but it&#39;s too late to change it now. Theoretically, a quest without Activities can still have Challenges, which is why this is on a higher level than activity&#x2F;variants, but it probably should have been in both places. That may come as a later revision.
	@JsonKey(name:'challenges')
	List<DestinyChallengeStatus> challenges;
	DestinyMilestoneQuest();

	factory DestinyMilestoneQuest.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneQuestFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneQuestToJson(this);
}
