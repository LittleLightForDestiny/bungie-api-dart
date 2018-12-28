import 'destiny_objective_progress.dart';

/* Data regarding the progress of a Quest for a specific character. Quests are composed of multiple steps, each with potentially multiple objectives: this QuestStatus will return Objective data for the *currently active* step in this quest. */
class DestinyQuestStatus{
	
	/* The hash identifier for the Quest Item. (Note: Quests are defined as Items, and thus you would use this to look up the quest's DestinyInventoryItemDefinition). For information on all steps in the quest, you can then examine its DestinyInventoryItemDefinition.setData property for Quest Steps (which are *also* items). You can use the Item Definition to display human readable data about the overall quest. */
	int questHash;
	
	/* The hash identifier of the current Quest Step, which is also a DestinyInventoryItemDefinition. You can use this to get human readable data about the current step and what to do in that step. */
	int stepHash;
	
	/* A step can have multiple objectives. This will give you the progress for each objective in the current step, in the order in which they are rendered in-game. */
	List<DestinyObjectiveProgress> stepObjectives;
	
	/* Whether or not the quest is tracked */
	bool tracked;
	
	/* The current Quest Step will be an instanced item in the player's inventory. If you care about that, this is the instance ID of that item. */
	String itemInstanceId;
	
	/* Whether or not the whole quest has been completed, regardless of whether or not you have redeemed the rewards for the quest. */
	bool completed;
	
	/* Whether or not you have redeemed rewards for this quest. */
	bool redeemed;
	
	/* Whether or not you have started this quest. */
	bool started;
	
	/* If the quest has a related Vendor that you should talk to in order to initiate the quest/earn rewards/continue the quest, this will be the hash identifier of that Vendor. Look it up its DestinyVendorDefinition. */
	int vendorHash;
	DestinyQuestStatus(
		this.questHash,
		this.stepHash,
		this.stepObjectives,
		this.tracked,
		this.itemInstanceId,
		this.completed,
		this.redeemed,
		this.started,
		this.vendorHash,
	);

	static DestinyQuestStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyQuestStatus(
				data['questHash'],
				data['stepHash'],
				data['stepObjectives'] != null ? DestinyObjectiveProgress.fromList(data['stepObjectives']) : null,
				data['tracked'],
				data['itemInstanceId'],
				data['completed'],
				data['redeemed'],
				data['started'],
				data['vendorHash'],
		);
	}

	static List<DestinyQuestStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyQuestStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyQuestStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['questHash'] = this.questHash;
			data['stepHash'] = this.stepHash;
			data['stepObjectives'] = this.stepObjectives.map((item)=>item.toMap()).toList();
			data['tracked'] = this.tracked;
			data['itemInstanceId'] = this.itemInstanceId;
			data['completed'] = this.completed;
			data['redeemed'] = this.redeemed;
			data['started'] = this.started;
			data['vendorHash'] = this.vendorHash;
		return data;
	}
}