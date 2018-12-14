import 'destiny_item_objectives_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent{
	Map<String, DestinyItemObjectivesComponent> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent(
				data['data'] != null ? Map<String, DestinyItemObjectivesComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemObjectivesComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromMap(item));
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