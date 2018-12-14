import 'destiny_stat.dart';
class DestinyItemStatsComponent{
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