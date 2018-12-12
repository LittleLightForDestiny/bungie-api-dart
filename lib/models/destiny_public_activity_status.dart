import 'destiny_item_quantity.dart';
class DestinyPublicActivityStatus{
	List<int> challengeObjectiveHashes;
	List<int> modifierHashes;
	List<DestinyItemQuantity> rewardTooltipItems;
	DestinyPublicActivityStatus(
		List<int> this.challengeObjectiveHashes,
		List<int> this.modifierHashes,
		List<DestinyItemQuantity> this.rewardTooltipItems,
	);

	static DestinyPublicActivityStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicActivityStatus(
				data['challengeObjectiveHashes'],
				data['modifierHashes'],
				DestinyItemQuantity.fromList(data['rewardTooltipItems']),
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
			data['challengeObjectiveHashes'] = challengeObjectiveHashes;
			data['modifierHashes'] = modifierHashes;
			data['rewardTooltipItems'] = rewardTooltipItems.map((item)=>item.toMap());
	}
}