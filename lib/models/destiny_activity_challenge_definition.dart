import 'destiny_item_quantity.dart';

/** Represents a reference to a Challenge, which for now is just an Objective. */
class DestinyActivityChallengeDefinition{
	
	/** The hash for the Objective that matches this challenge. Use it to look up the DestinyObjectiveDefinition. */
	int objectiveHash;
	
	/** The rewards as they're represented in the UI. Note that they generally link to "dummy" items that give a summary of rewards rather than direct, real items themselves.
If the quantity is 0, don't show the quantity. */
	List<DestinyItemQuantity> dummyRewards;
	DestinyActivityChallengeDefinition(
		this.objectiveHash,
		this.dummyRewards,
	);

	static DestinyActivityChallengeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityChallengeDefinition(
				data['objectiveHash'],
				data['dummyRewards'] != null ? DestinyItemQuantity.fromList(data['dummyRewards']) : null,
		);
	}

	static List<DestinyActivityChallengeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityChallengeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityChallengeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectiveHash'] = this.objectiveHash;
			data['dummyRewards'] = this.dummyRewards.map((item)=>item.toMap()).toList();
		return data;
	}
}