import 'destiny_item_investment_stat_definition.dart';
class DestinyObjectiveStatEntryDefinition{
	DestinyItemInvestmentStatDefinition stat;
	int style;
	DestinyObjectiveStatEntryDefinition(
		DestinyItemInvestmentStatDefinition this.stat,
		int this.style,
	);

	static DestinyObjectiveStatEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyObjectiveStatEntryDefinition(
				data['stat'],
				data['style'],
		);
	}

	static List<DestinyObjectiveStatEntryDefinition> fromList(List<dynamic> data){
		List<DestinyObjectiveStatEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectiveStatEntryDefinition.fromJson(item));
    });
    return list;
	}
}