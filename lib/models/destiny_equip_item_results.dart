import 'destiny_equip_item_result.dart';

/** The results of a bulk Equipping operation performed through the Destiny API. */
class DestinyEquipItemResults{
	
	/**  */
	List<DestinyEquipItemResult> equipResults;
	DestinyEquipItemResults(
		this.equipResults,
	);

	static DestinyEquipItemResults fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEquipItemResults(
				data['equipResults'] != null ? DestinyEquipItemResult.fromList(data['equipResults']) : null,
		);
	}

	static List<DestinyEquipItemResults> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEquipItemResults> list = new List();
    data.forEach((item) {
      list.add(DestinyEquipItemResults.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['equipResults'] = this.equipResults != null? this.equipResults.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}