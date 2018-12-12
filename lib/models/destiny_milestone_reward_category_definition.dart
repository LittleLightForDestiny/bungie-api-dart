import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_reward_entry_definition.dart';
class DestinyMilestoneRewardCategoryDefinition{
	int categoryHash;
	String categoryIdentifier;
	DestinyDisplayPropertiesDefinition displayProperties;
	Map<DestinyMilestoneRewardEntryDefinition, dynamic> rewardEntries;
	int order;
	DestinyMilestoneRewardCategoryDefinition(
		int this.categoryHash,
		String this.categoryIdentifier,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		Map<DestinyMilestoneRewardEntryDefinition, dynamic> this.rewardEntries,
		int this.order,
	);

	static DestinyMilestoneRewardCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneRewardCategoryDefinition(
				data['categoryHash'],
				data['categoryIdentifier'],
				data['displayProperties'],
				data['rewardEntries'],
				data['order'],
		);
	}

	static List<DestinyMilestoneRewardCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneRewardCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categoryHash'] = this.categoryHash;
			data['categoryIdentifier'] = this.categoryIdentifier;
			data['displayProperties'] = this.displayProperties;
			data['rewardEntries'] = this.rewardEntries;
			data['order'] = this.order;
		return data;
	}
}