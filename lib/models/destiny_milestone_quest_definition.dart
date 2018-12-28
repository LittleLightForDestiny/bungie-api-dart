import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_quest_rewards_definition.dart';
import 'destiny_milestone_activity_definition.dart';

/* Any data we need to figure out whether this Quest Item is the currently active one for the conceptual Milestone. Even just typing this description, I already regret it. */
class DestinyMilestoneQuestDefinition{
	
	/* The item representing this Milestone quest. Use this hash to look up the DestinyInventoryItemDefinition for the quest to find its steps and human readable data. */
	int questItemHash;
	
	/* The individual quests may have different definitions from the overall milestone: if there's a specific active quest, use these displayProperties instead of that of the overall DestinyMilestoneDefinition. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* If populated, this image can be shown instead of the generic milestone's image when this quest is live, or it can be used to show a background image for the quest itself that differs from that of the Activity or the Milestone. */
	String overrideImage;
	
	/* The rewards you will get for completing this quest, as best as we could extract them from our data. Sometimes, it'll be a decent amount of data. Sometimes, it's going to be sucky. Sorry. */
	DestinyMilestoneQuestRewardsDefinition questRewards;
	
	/* The full set of all possible "conceptual activities" that are related to this Milestone. Tiers or alternative modes of play within these conceptual activities will be defined as sub-entities. Keyed by the Conceptual Activity Hash. Use the key to look up DestinyActivityDefinition. */
	Map<String, DestinyMilestoneActivityDefinition> activities;
	
	/* Sometimes, a Milestone's quest is related to an entire Destination rather than a specific activity. In that situation, this will be the hash of that Destination. Hotspots are currently the only Milestones that expose this data, but that does not preclude this data from being returned for other Milestones in the future. */
	int destinationHash;
	DestinyMilestoneQuestDefinition(
		this.questItemHash,
		this.displayProperties,
		this.overrideImage,
		this.questRewards,
		this.activities,
		this.destinationHash,
	);

	static DestinyMilestoneQuestDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuestDefinition(
				data['questItemHash'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['overrideImage'],
				data['questRewards'] != null ? DestinyMilestoneQuestRewardsDefinition.fromMap(data['questRewards']) : null,
				data['activities'] != null ? Map<String, DestinyMilestoneActivityDefinition>.from(data['activities'].map((k, v)=>MapEntry(k, DestinyMilestoneActivityDefinition.fromMap(v)))) : null,
				data['destinationHash'],
		);
	}

	static List<DestinyMilestoneQuestDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuestDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuestDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['questItemHash'] = this.questItemHash;
			data['displayProperties'] = this.displayProperties;
			data['overrideImage'] = this.overrideImage;
			data['questRewards'] = this.questRewards;
			data['activities'] = this.activities;
			data['destinationHash'] = this.destinationHash;
		return data;
	}
}