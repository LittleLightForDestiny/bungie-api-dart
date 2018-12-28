import 'destiny_item_quantity.dart';

/** Represents the public-facing status of an activity: any data about what is currently active in the Activity, regardless of an individual character's progress in it. */
class DestinyPublicActivityStatus{
	
	/** Active Challenges for the activity, if any - represented as hashes for DestinyObjectiveDefinitions. */
	List<int> challengeObjectiveHashes;
	
	/** The active modifiers on this activity, if any - represented as hashes for DestinyActivityModifierDefinitions. */
	List<int> modifierHashes;
	
	/** If the activity itself provides any specific "mock" rewards, this will be the items and their quantity.
Why "mock", you ask? Because these are the rewards as they are represented in the tooltip of the Activity.
These are often pointers to fake items that look good in a tooltip, but represent an abstract concept of what you will get for a reward rather than the specific items you may obtain. */
	List<DestinyItemQuantity> rewardTooltipItems;
	DestinyPublicActivityStatus(
		this.challengeObjectiveHashes,
		this.modifierHashes,
		this.rewardTooltipItems,
	);

	static DestinyPublicActivityStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicActivityStatus(
				data['challengeObjectiveHashes'] != null ? data['challengeObjectiveHashes']?.cast<int>() ?? null : null,
				data['modifierHashes'] != null ? data['modifierHashes']?.cast<int>() ?? null : null,
				data['rewardTooltipItems'] != null ? DestinyItemQuantity.fromList(data['rewardTooltipItems']) : null,
		);
	}

	static List<DestinyPublicActivityStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicActivityStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicActivityStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['challengeObjectiveHashes'] = this.challengeObjectiveHashes;
			data['modifierHashes'] = this.modifierHashes;
			data['rewardTooltipItems'] = this.rewardTooltipItems.map((item)=>item.toMap()).toList();
		return data;
	}
}