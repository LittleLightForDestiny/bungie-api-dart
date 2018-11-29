import 'destiny_stat.dart';
class DestinyItemStatsComponent{
	Map<DestinyStat, dynamic> stats;
	DestinyItemStatsComponent(
		Map<DestinyStat, dynamic> this.stats,
	);

	static DestinyItemStatsComponent fromJson(Map<String, dynamic> data){
		return new DestinyItemStatsComponent(
				data['stats'],
		);
	}

	static List<DestinyItemStatsComponent> fromList(List<dynamic> data){
		List<DestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemStatsComponent.fromJson(item));
    });
    return list;
	}
}