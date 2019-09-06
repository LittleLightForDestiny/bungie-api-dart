import 'destiny_objective_progress.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_quest_status.g.dart';

/// Data regarding the progress of a Quest for a specific character. Quests are composed of multiple steps, each with potentially multiple objectives: this QuestStatus will return Objective data for the *currently active* step in this quest.
@JsonSerializable()
class DestinyQuestStatus {

	/// The hash identifier for the Quest Item. (Note: Quests are defined as Items, and thus you would use this to look up the quest&#39;s DestinyInventoryItemDefinition). For information on all steps in the quest, you can then examine its DestinyInventoryItemDefinition.setData property for Quest Steps (which are *also* items). You can use the Item Definition to display human readable data about the overall quest.
	@JsonKey(name:'questHash')
	int questHash;

	/// The hash identifier of the current Quest Step, which is also a DestinyInventoryItemDefinition. You can use this to get human readable data about the current step and what to do in that step.
	@JsonKey(name:'stepHash')
	int stepHash;

	/// A step can have multiple objectives. This will give you the progress for each objective in the current step, in the order in which they are rendered in-game.
	@JsonKey(name:'stepObjectives')
	List<DestinyObjectiveProgress> stepObjectives;

	/// Whether or not the quest is tracked
	@JsonKey(name:'tracked')
	bool tracked;

	/// The current Quest Step will be an instanced item in the player&#39;s inventory. If you care about that, this is the instance ID of that item.
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;

	/// Whether or not the whole quest has been completed, regardless of whether or not you have redeemed the rewards for the quest.
	@JsonKey(name:'completed')
	bool completed;

	/// Whether or not you have redeemed rewards for this quest.
	@JsonKey(name:'redeemed')
	bool redeemed;

	/// Whether or not you have started this quest.
	@JsonKey(name:'started')
	bool started;

	/// If the quest has a related Vendor that you should talk to in order to initiate the quest&#x2F;earn rewards&#x2F;continue the quest, this will be the hash identifier of that Vendor. Look it up its DestinyVendorDefinition.
	@JsonKey(name:'vendorHash')
	int vendorHash;
	DestinyQuestStatus();

	factory DestinyQuestStatus.fromJson(Map<String, dynamic> json) => _$DestinyQuestStatusFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyQuestStatusToJson(this);
}
