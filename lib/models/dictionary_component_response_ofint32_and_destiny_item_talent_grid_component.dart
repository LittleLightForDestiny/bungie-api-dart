import 'destiny_item_talent_grid_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent{
	Map<DestinyItemTalentGridComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent(
		Map<DestinyItemTalentGridComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data;
			data['privacy'] = privacy;
	}
}