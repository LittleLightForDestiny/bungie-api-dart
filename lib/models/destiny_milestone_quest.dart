import 'destiny_quest_status.dart';
import 'destiny_milestone_activity.dart';
import 'destiny_challenge_status.dart';

/** If a Milestone has one or more Quests, this will contain the live information for the character's status with one of those quests. */
class DestinyMilestoneQuest{
	
	/** Quests are defined as Items in content. As such, this is the hash identifier of the DestinyInventoryItemDefinition that represents this quest. It will have pointers to all of the steps in the quest, and display information for the quest (title, description, icon etc) Individual steps will be referred to in the Quest item's DestinyInventoryItemDefinition.setData property, and themselves are Items with their own renderable data. */
	int questItemHash;
	
	/** The current status of the quest for the character making the request. */
	DestinyQuestStatus status;
	
	/** *IF* the Milestone has an active Activity that can give you greater details about what you need to do, it will be returned here. Remember to associate this with the DestinyMilestoneDefinition's activities to get details about the activity, including what specific quest it is related to if you have multiple quests to choose from. */
	DestinyMilestoneActivity activity;
	
	/** The activities referred to by this quest can have many associated challenges. They are all contained here, with activityHashes so that you can associate them with the specific activity variants in which they can be found. In retrospect, I probably should have put these under the specific Activity Variants, but it's too late to change it now. Theoretically, a quest without Activities can still have Challenges, which is why this is on a higher level than activity/variants, but it probably should have been in both places. That may come as a later revision. */
	List<DestinyChallengeStatus> challenges;
	DestinyMilestoneQuest(
		this.questItemHash,
		this.status,
		this.activity,
		this.challenges,
	);

	static DestinyMilestoneQuest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuest(
				data['questItemHash'],
				data['status'] != null ? DestinyQuestStatus.fromMap(data['status']) : null,
				data['activity'] != null ? DestinyMilestoneActivity.fromMap(data['activity']) : null,
				data['challenges'] != null ? DestinyChallengeStatus.fromList(data['challenges']) : null,
		);
	}

	static List<DestinyMilestoneQuest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuest> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['questItemHash'] = this.questItemHash;
			data['status'] = this.status != null? this.status.toMap() : null;
			data['activity'] = this.activity != null? this.activity.toMap() : null;
			data['challenges'] = this.challenges != null? this.challenges.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}