import 'destiny_item_instance_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent{
	Map<String, DestinyItemInstanceComponent> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent(
				data['data'] != null ? Map<String, DestinyItemInstanceComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemInstanceComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent.fromMap(item));
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