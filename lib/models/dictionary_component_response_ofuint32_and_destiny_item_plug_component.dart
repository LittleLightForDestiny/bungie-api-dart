import 'destiny_item_plug_component.dart';

/*  */
class DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent{
	
	/*  */
	Map<String, DestinyItemPlugComponent> data;
	
	/*  */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent(
				data['data'] != null ? Map<String, DestinyItemPlugComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemPlugComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromMap(item));
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