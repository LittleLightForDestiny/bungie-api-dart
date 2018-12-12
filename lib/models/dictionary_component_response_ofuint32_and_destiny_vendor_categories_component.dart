import 'destiny_vendor_categories_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent{
	Map<DestinyVendorCategoriesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent(
		Map<DestinyVendorCategoriesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data;
			data['privacy'] = privacy;
	}
}