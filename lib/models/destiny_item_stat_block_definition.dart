import 'destiny_inventory_item_stat_definition.dart';
class DestinyItemStatBlockDefinition{
	bool disablePrimaryStatDisplay;
	int statGroupHash;
	Map<DestinyInventoryItemStatDefinition, dynamic> stats;
	bool hasDisplayableStats;
	int primaryBaseStatHash;
	DestinyItemStatBlockDefinition(
		bool this.disablePrimaryStatDisplay,
		int this.statGroupHash,
		Map<DestinyInventoryItemStatDefinition, dynamic> this.stats,
		bool this.hasDisplayableStats,
		int this.primaryBaseStatHash,
	);

	static DestinyItemStatBlockDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemStatBlockDefinition(
				data['disablePrimaryStatDisplay'],
				data['statGroupHash'],
				data['stats'],
				data['hasDisplayableStats'],
				data['primaryBaseStatHash'],
		);
	}

	static List<DestinyItemStatBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemStatBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemStatBlockDefinition.fromJson(item));
    });
    return list;
	}
}