import 'destiny_item_quantity.dart';
class DestinyActivityChallengeDefinition{
	int objectiveHash;
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