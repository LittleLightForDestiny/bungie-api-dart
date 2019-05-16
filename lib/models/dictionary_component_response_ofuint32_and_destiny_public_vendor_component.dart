import 'destiny_public_vendor_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent{
	
	/**  */
	Map<String, DestinyPublicVendorComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent(
				data['data'] != null ? Map<String, DestinyPublicVendorComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyPublicVendorComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent.fromMap(item));
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