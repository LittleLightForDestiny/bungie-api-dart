import 'destiny_vendor_categories_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent{
	Map<DestinyVendorCategoriesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent(
		Map<DestinyVendorCategoriesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent.fromJson(item));
    });
    return list;
	}
}