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

	static DestinyProgressionStepDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyProgressionStepDefinition.fromJson(item));
    });
    return list;
	}
}