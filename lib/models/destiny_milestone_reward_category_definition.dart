import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_reward_entry_definition.dart';
class DestinyMilestoneRewardCategoryDefinition{
	int categoryHash;
	String categoryIdentifier;
	DestinyDisplayPropertiesDefinition displayProperties;
	Map<String, DestinyMilestoneRewardEntryDefinition> rewardEntries;
	int order;
	DestinyMilestoneRewardCategoryDefinition(
		this.categoryHash,
		this.categoryIdentifier,
		this.displayProperties,
		this.rewardEntries,
		this.order,
	);

	static DestinyMilestoneRewardCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneRewardCategoryDefinition(
				data['categoryHash'],
				data['categoryIdentifier'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['rewardEntries'] != null ? Map<String, DestinyMilestoneRewardEntryDefinition>.from(data['rewardEntries'].map((k, v)=>MapEntry(k, DestinyMilestoneRewardEntryDefinition.fromMap(v)))) : null,
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