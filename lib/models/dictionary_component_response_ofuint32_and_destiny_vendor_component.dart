import 'destiny_vendor_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyVendorComponent{
	Map<DestinyVendorComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent(
		Map<DestinyVendorComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyVendorComponent(
				data['data'],
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
			data['data'] = data;
			data['privacy'] = privacy;
	}
}