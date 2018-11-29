import 'destiny_item_stats_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemStatsComponent{
	Map<DestinyItemStatsComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemStatsComponent(
		Map<DestinyItemStatsComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemStatsComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyItemStatsComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemStatsComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemStatsComponent.fromJson(item));
    });
    return list;
	}
}