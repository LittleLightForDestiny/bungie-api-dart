import 'destiny_item_quantity.dart';
class DestinyActivityChallengeDefinition{
	int objectiveHash;
	List<DestinyItemQuantity> dummyRewards;
	DestinyActivityChallengeDefinition(
		int this.objectiveHash,
		List<DestinyItemQuantity> this.dummyRewards,
	);

	static DestinyActivityChallengeDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityChallengeDefinition(
				data['objectiveHash'],
				DestinyItemQuantity.fromList(data['dummyRewards']),
		);
	}

	static List<DestinyActivityChallengeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityChallengeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityChallengeDefinition.fromJson(item));
    });
    return list;
	}
}