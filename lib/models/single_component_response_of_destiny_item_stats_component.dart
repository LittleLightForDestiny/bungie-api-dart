import 'destiny_item_stats_component.dart';

/**  */
class SingleComponentResponseOfDestinyItemStatsComponent{
	
	/** If you want the stats on an item's instanced data, get this component.
These are stats like Attack, Defense etc... and *not* historical stats.
Note that some stats have additional computation in-game at runtime - for instance, Magazine Size - and thus these stats might not be 100% accurate compared to what you see in-game for some stats. I know, it sucks. I hate it too. */
	DestinyItemStatsComponent data;
	
	/**  */
	int privacy;
	SingleComponentResponseOfDestinyItemStatsComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemStatsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemStatsComponent(
				data['data'] != null ? DestinyItemStatsComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemStatsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemStatsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data != null? this.data.toMap() : null;
			data['privacy'] = this.privacy;
		return data;
	}
}