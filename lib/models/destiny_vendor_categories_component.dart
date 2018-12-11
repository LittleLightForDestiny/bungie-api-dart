import 'destiny_vendor_category.dart';
class DestinyVendorCategoriesComponent{
	List<DestinyVendorCategory> categories;
	DestinyVendorCategoriesComponent(
		List<DestinyVendorCategory> this.categories,
	);

	static DestinyVendorCategoriesComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorCategoriesComponent(
				DestinyVendorCategory.fromList(data['categories']),
		);
	}

	static List<DestinyVendorCategoriesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorCategoriesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorCategoriesComponent.fromJson(item));
    });
    return list;
	}
}