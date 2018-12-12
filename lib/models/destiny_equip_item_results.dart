import 'destiny_equip_item_result.dart';
class DestinyEquipItemResults{
	List<DestinyEquipItemResult> equipResults;
	DestinyEquipItemResults(
		List<DestinyEquipItemResult> this.equipResults,
	);

	static DestinyEquipItemResults fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEquipItemResults(
				DestinyEquipItemResult.fromList(data['equipResults']),
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
			data['equipResults'] = this.equipResults.map((item)=>item.toMap());
		return data;
	}
}