import 'destiny_item_stats_component.dart';

/**  */
class DictionaryComponentResponseOfint64AndDestinyItemStatsComponent{
	
	/**  */
	Map<String, DestinyItemStatsComponent> data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemStatsComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemStatsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemStatsComponent(
				data['data'] != null ? Map<String, DestinyItemStatsComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemStatsComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemStatsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemStatsComponent.fromMap(item));
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