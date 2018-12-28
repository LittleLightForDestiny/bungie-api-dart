import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_reward_entry_definition.dart';

/* The definition of a category of rewards, that contains many individual rewards. */
class DestinyMilestoneRewardCategoryDefinition{
	
	/* Identifies the reward category. Only guaranteed unique within this specific component! */
	int categoryHash;
	
	/* The string identifier for the category, if you want to use it for some end. Guaranteed unique within the specific component. */
	String categoryIdentifier;
	
	/* Hopefully this is obvious by now. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* If this milestone can provide rewards, this will define the sets of rewards that can be earned, the conditions under which they can be acquired, internal data that we'll use at runtime to determine whether you've already earned or redeemed this set of rewards, and the category that this reward should be placed under. */
	Map<String, DestinyMilestoneRewardEntryDefinition> rewardEntries;
	
	/* If you want to use BNet's recommended order for rendering categories programmatically, use this value and compare it to other categories to determine the order in which they should be rendered. I don't feel great about putting this here, I won't lie. */
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