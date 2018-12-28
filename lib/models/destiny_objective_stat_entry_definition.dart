import 'destiny_item_investment_stat_definition.dart';

/* Defines the conditions under which stat modifications will be applied to a Character while participating in an objective. */
class DestinyObjectiveStatEntryDefinition{
	
	/* The stat being modified, and the value used. */
	DestinyItemInvestmentStatDefinition stat;
	
	/* Whether it will be applied as long as the objective is active, when it's completed, or until it's completed. */
	int style;
	DestinyObjectiveStatEntryDefinition(
		this.stat,
		this.style,
	);

	static DestinyObjectiveStatEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectiveStatEntryDefinition(
				data['stat'] != null ? DestinyItemInvestmentStatDefinition.fromMap(data['stat']) : null,
				data['style'],
		);
	}

	static List<DestinyObjectiveStatEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectiveStatEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectiveStatEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['stat'] = this.stat;
			data['style'] = this.style;
		return data;
	}
}