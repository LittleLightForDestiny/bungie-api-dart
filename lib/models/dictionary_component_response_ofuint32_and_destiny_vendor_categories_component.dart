import 'destiny_vendor_categories_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent{
	Map<String, DestinyVendorCategoriesComponent> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent(
				data['data'] != null ? Map<String, DestinyVendorCategoriesComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyVendorCategoriesComponent.fromMap(v)))) : null,
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
			data['data'] = this.data;
			data['privacy'] = this.privacy;
		return data;
	}
}