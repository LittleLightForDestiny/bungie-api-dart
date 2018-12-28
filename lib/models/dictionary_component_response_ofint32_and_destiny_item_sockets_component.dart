import 'destiny_item_sockets_component.dart';

/*  */
class DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent{
	
	/*  */
	Map<String, DestinyItemSocketsComponent> data;
	
	/*  */
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent(
				data['data'] != null ? Map<String, DestinyItemSocketsComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemSocketsComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent.fromMap(item));
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