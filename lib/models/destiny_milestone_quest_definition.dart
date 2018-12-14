import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_quest_rewards_definition.dart';
import 'destiny_milestone_activity_definition.dart';
class DestinyMilestoneQuestDefinition{
	int questItemHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	String overrideImage;
	DestinyMilestoneQuestRewardsDefinition questRewards;
	Map<String, DestinyMilestoneActivityDefinition> activities;
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