import 'destiny_item_quantity.dart';

/** This defines a single Step in a progression (which roughly equates to a level. See DestinyProgressionDefinition for caveats). */
class DestinyProgressionStepDefinition{
	
	/** Very rarely, Progressions will have localized text describing the Level of the progression. This will be that localized text, if it exists. Otherwise, the standard appears to be to simply show the level numerically. */
	String stepName;
	
	/** This appears to be, when you "level up", whether a visual effect will display and on what entity. See DestinyProgressionStepDisplayEffect for slightly more info. */
	int displayEffectType;
	
	/** The total amount of progression points/"experience" you will need to initially reach this step. If this is the last step and the progression is repeating indefinitely (DestinyProgressionDefinition.repeatLastStep), this will also be the progress needed to level it up further by repeating this step again. */
	int progressTotal;
	
	/** A listing of items rewarded as a result of reaching this level. */
	List<DestinyItemQuantity> rewardItems;
	
	/** If this progression step has a specific icon related to it, this is the icon to show. */
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