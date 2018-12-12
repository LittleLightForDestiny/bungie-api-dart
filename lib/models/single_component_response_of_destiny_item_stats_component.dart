import 'destiny_item_stats_component.dart';
class SingleComponentResponseOfDestinyItemStatsComponent{
	DestinyItemStatsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemStatsComponent(
		DestinyItemStatsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemStatsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemStatsComponent(
				DestinyItemStatsComponent.fromMap(data['data']),
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
			data['data'] = data.toMap();
			data['privacy'] = privacy;
	}
}