import 'destiny_item_quantity.dart';
class DestinyProgressionStepDefinition{
	String stepName;
	int displayEffectType;
	int progressTotal;
	List<DestinyItemQuantity> rewardItems;
	String icon;
	DestinyProgressionStepDefinition(
		String this.stepName,
		int this.displayEffectType,
		int this.progressTotal,
		List<DestinyItemQuantity> this.rewardItems,
		String this.icon,
	);

	static DestinyProgressionStepDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionStepDefinition(
				data['stepName'],
				data['displayEffectType'],
				data['progressTotal'],
				DestinyItemQuantity.fromList(data['rewardItems']),
				data['icon'],
		);
	}

	static List<DestinyProgressionStepDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgressionStepDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionStepDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['stepName'] = stepName;
			data['displayEffectType'] = displayEffectType;
			data['progressTotal'] = progressTotal;
			data['rewardItems'] = rewardItems.map((item)=>item.toMap());
			data['icon'] = icon;
	}
}