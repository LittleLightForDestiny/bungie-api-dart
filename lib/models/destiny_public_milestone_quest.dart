import 'destiny_public_milestone_activity.dart';
import 'destiny_public_milestone_challenge.dart';

/*  */
class DestinyPublicMilestoneQuest{
	
	/* Quests are defined as Items in content. As such, this is the hash identifier of the DestinyInventoryItemDefinition that represents this quest. It will have pointers to all of the steps in the quest, and display information for the quest (title, description, icon etc) Individual steps will be referred to in the Quest item's DestinyInventoryItemDefinition.setData property, and themselves are Items with their own renderable data. */
	int questItemHash;
	
	/* A milestone need not have an active activity, but if there is one it will be returned here, along with any variant and additional information. */
	DestinyPublicMilestoneActivity activity;
	
	/* For the given quest there could be 0-to-Many challenges: mini quests that you can perform in the course of doing this quest, that may grant you rewards and benefits. */
	List<DestinyPublicMilestoneChallenge> challenges;
	DestinyPublicMilestoneQuest(
		this.questItemHash,
		this.activity,
		this.challenges,
	);

	static DestinyPublicMilestoneQuest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneQuest(
				data['questItemHash'],
				data['activity'] != null ? DestinyPublicMilestoneActivity.fromMap(data['activity']) : null,
				data['challenges'] != null ? DestinyPublicMilestoneChallenge.fromList(data['challenges']) : null,
		);
	}

	static List<DestinyPublicMilestoneQuest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneQuest> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneQuest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['questItemHash'] = this.questItemHash;
			data['activity'] = this.activity;
			data['challenges'] = this.challenges.map((item)=>item.toMap()).toList();
		return data;
	}
}