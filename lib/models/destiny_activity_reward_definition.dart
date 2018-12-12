import 'destiny_item_quantity.dart';
class DestinyActivityRewardDefinition{
	String rewardText;
	List<DestinyItemQuantity> rewardItems;
	DestinyActivityRewardDefinition(
		String this.rewardText,
		List<DestinyItemQuantity> this.rewardItems,
	);

	static DestinyActivityRewardDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityRewardDefinition(
				data['rewardText'],
				DestinyItemQuantity.fromList(data['rewardItems']),
		);
	}

	static List<DestinyActivityRewardDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityRewardDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityRewardDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['rewardText'] = this.rewardText;
			data['rewardItems'] = this.rewardItems.map((item)=>item.toMap()).toList();
		return data;
	}
}