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

	static DestinyMilestoneRewardCategoryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneRewardCategoryDefinition(
				data['categoryHash'],
				data['categoryIdentifier'],
				data['displayProperties'],
				data['rewardEntries'],
				data['order'],
		);
	}

	static List<DestinyMilestoneRewardCategoryDefinition> fromList(List<dynamic> data){
		List<DestinyMilestoneRewardCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardCategoryDefinition.fromJson(item));
    });
    return list;
	}
}