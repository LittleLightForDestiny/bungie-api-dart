import 'destiny_vendor_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndDestinyVendorComponent{
	
	/**  */
	Map<String, DestinyVendorComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyVendorComponent(
				data['data'] != null ? Map<String, DestinyVendorComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyVendorComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyVendorComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyVendorComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyVendorComponent.fromMap(item));
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