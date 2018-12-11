import 'destiny_item_stats_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent{
	Map<DestinyItemStatsComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent(
		Map<DestinyItemStatsComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromJson(item));
    });
    return list;
	}
}