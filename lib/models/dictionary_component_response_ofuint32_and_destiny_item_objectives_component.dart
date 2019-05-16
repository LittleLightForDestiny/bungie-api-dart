import 'destiny_item_objectives_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent{
	
	/**  */
	Map<String, DestinyItemObjectivesComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent(
				data['data'] != null ? Map<String, DestinyItemObjectivesComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemObjectivesComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data != null? this.data.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['privacy'] = this.privacy;
		return data;
	}
}