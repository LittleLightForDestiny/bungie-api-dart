import 'destiny_stat.dart';

/** If you want the stats on an item's instanced data, get this component.
These are stats like Attack, Defense etc... and *not* historical stats.
Note that some stats have additional computation in-game at runtime - for instance, Magazine Size - and thus these stats might not be 100% accurate compared to what you see in-game for some stats. I know, it sucks. I hate it too. */
class DestinyItemStatsComponent{
	
	/** If the item has stats that it provides (damage, defense, etc...), it will be given here. */
	Map<String, DestinyStat> stats;
	DestinyItemStatsComponent(
		this.stats,
	);

	static DestinyItemStatsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemStatsComponent(
				data['stats'] != null ? Map<String, DestinyStat>.from(data['stats'].map((k, v)=>MapEntry(k, DestinyStat.fromMap(v)))) : null,
		);
	}

	static List<DestinyItemStatsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemStatsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['stats'] = this.stats;
		return data;
	}
}