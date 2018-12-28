import 'destiny_item_stats_component.dart';

/*  */
class DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent{
	
	/*  */
	Map<String, DestinyItemStatsComponent> data;
	
	/*  */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent(
				data['data'] != null ? Map<String, DestinyItemStatsComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemStatsComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data;
			data['privacy'] = this.privacy;
		return data;
	}
}