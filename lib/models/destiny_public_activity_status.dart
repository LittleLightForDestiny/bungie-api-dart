import 'destiny_item_quantity.dart';
class DestinyPublicActivityStatus{
	List<int> challengeObjectiveHashes;
	List<int> modifierHashes;
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