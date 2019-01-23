import 'destiny_milestone_reward_entry.dart';

/** Represents a category of "summary" rewards that can be earned for the Milestone regardless of specific quest rewards that can be earned. */
class DestinyMilestoneRewardCategory{
	
	/** Look up the relevant DestinyMilestoneDefinition, and then use rewardCategoryHash to look up the category info in DestinyMilestoneDefinition.rewards. */
	int rewardCategoryHash;
	
	/** The individual reward entries for this category, and their status. */
	List<DestinyMilestoneRewardEntry> entries;
	DestinyMilestoneRewardCategory(
		this.rewardCategoryHash,
		this.entries,
	);

	static DestinyMilestoneRewardCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneRewardCategory(
				data['rewardCategoryHash'],
				data['entries'] != null ? DestinyMilestoneRewardEntry.fromList(data['entries']) : null,
		);
	}

	static List<DestinyMilestoneRewardCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneRewardCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardCategory.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['rewardCategoryHash'] = this.rewardCategoryHash;
			data['entries'] = this.entries != null? this.entries.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}