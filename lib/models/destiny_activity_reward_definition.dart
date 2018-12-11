import 'destiny_item_quantity.dart';
class DestinyActivityRewardDefinition{
	String rewardText;
	List<DestinyItemQuantity> rewardItems;
	DestinyActivityRewardDefinition(
		String this.rewardText,
		List<DestinyItemQuantity> this.rewardItems,
	);

	static DestinyActivityRewardDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyActivityRewardDefinition.fromJson(item));
    });
    return list;
	}
}