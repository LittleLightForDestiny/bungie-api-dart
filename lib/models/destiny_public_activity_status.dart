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

	static DestinyPublicActivityStatus fromJson(Map<String, dynamic> data){
		return new DestinyPublicActivityStatus(
				data['challengeObjectiveHashes'],
				data['modifierHashes'],
				DestinyItemQuantity.fromList(data['rewardTooltipItems']),
		);
	}

	static List<DestinyPublicActivityStatus> fromList(List<dynamic> data){
		List<DestinyPublicActivityStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicActivityStatus.fromJson(item));
    });
    return list;
	}
}