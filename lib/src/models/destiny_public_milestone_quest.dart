import 'destiny_public_milestone_activity.dart';
import 'destiny_public_milestone_challenge.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_public_milestone_quest.g.dart';

@JsonSerializable()
class DestinyPublicMilestoneQuest {

	/// Quests are defined as Items in content. As such, this is the hash identifier of the DestinyInventoryItemDefinition that represents this quest. It will have pointers to all of the steps in the quest, and display information for the quest (title, description, icon etc) Individual steps will be referred to in the Quest item&#39;s DestinyInventoryItemDefinition.setData property, and themselves are Items with their own renderable data.
	@JsonKey(name:'questItemHash')
	int questItemHash;

	/// A milestone need not have an active activity, but if there is one it will be returned here, along with any variant and additional information.
	@JsonKey(name:'activity')
	DestinyPublicMilestoneActivity activity;

	/// For the given quest there could be 0-to-Many challenges: mini quests that you can perform in the course of doing this quest, that may grant you rewards and benefits.
	@JsonKey(name:'challenges')
	List<DestinyPublicMilestoneChallenge> challenges;
	DestinyPublicMilestoneQuest();

	factory DestinyPublicMilestoneQuest.fromJson(Map<String, dynamic> json) => _$DestinyPublicMilestoneQuestFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPublicMilestoneQuestToJson(this);
}
