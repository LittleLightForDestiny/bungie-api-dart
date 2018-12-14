import 'destiny_item_quantity.dart';
class DestinyProgressionStepDefinition{
	String stepName;
	int displayEffectType;
	int progressTotal;
	List<DestinyItemQuantity> rewardItems;
	String icon;
	DestinyProgressionStepDefinition(
		this.stepName,
		this.displayEffectType,
		this.progressTotal,
		this.rewardItems,
		this.icon,
	);

	static DestinyProgressionStepDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionStepDefinition(
				data['stepName'],
				data['displayEffectType'],
				data['progressTotal'],
				data['rewardItems'] != null ? DestinyItemQuantity.fromList(data['rewardItems']) : null,
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
			data['stepName'] = this.stepName;
			data['displayEffectType'] = this.displayEffectType;
			data['progressTotal'] = this.progressTotal;
			data['rewardItems'] = this.rewardItems.map((item)=>item.toMap()).toList();
			data['icon'] = this.icon;
		return data;
	}
}