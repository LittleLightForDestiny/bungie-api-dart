import 'destiny_item_stats_component.dart';
class SingleComponentResponseOfDestinyItemStatsComponent{
	DestinyItemStatsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemStatsComponent(
		DestinyItemStatsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemStatsComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyItemStatsComponent(
				DestinyItemStatsComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemStatsComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemStatsComponent.fromJson(item));
    });
    return list;
	}
}