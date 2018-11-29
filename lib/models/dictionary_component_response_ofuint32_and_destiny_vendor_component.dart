import 'destiny_vendor_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyVendorComponent{
	Map<DestinyVendorComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent(
		Map<DestinyVendorComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyVendorComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyVendorComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyVendorComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyVendorComponent.fromJson(item));
    });
    return list;
	}
}