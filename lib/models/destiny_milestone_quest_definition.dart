import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_quest_rewards_definition.dart';
import 'destiny_milestone_activity_definition.dart';
class DestinyMilestoneQuestDefinition{
	int questItemHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	String overrideImage;
	DestinyMilestoneQuestRewardsDefinition questRewards;
	Map<DestinyMilestoneActivityDefinition, dynamic> activities;
	int destinationHash;
	DestinyMilestoneQuestDefinition(
		int this.questItemHash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.overrideImage,
		DestinyMilestoneQuestRewardsDefinition this.questRewards,
		Map<DestinyMilestoneActivityDefinition, dynamic> this.activities,
		int this.destinationHash,
	);

	static DestinyMilestoneQuestDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuestDefinition(
				data['questItemHash'],
				data['displayProperties'],
				data['overrideImage'],
				data['questRewards'],
				data['activities'],
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