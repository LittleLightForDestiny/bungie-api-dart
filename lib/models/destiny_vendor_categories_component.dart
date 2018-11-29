import 'destiny_vendor_category.dart';
class DestinyVendorCategoriesComponent{
	List<DestinyVendorCategory> categories;
	DestinyVendorCategoriesComponent(
		List<DestinyVendorCategory> this.categories,
	);

	static DestinyVendorCategoriesComponent fromJson(Map<String, dynamic> data){
		return new DestinyVendorCategoriesComponent(
				DestinyVendorCategory.fromList(data['categories']),
		);
	}

	static List<DestinyVendorCategoriesComponent> fromList(List<dynamic> data){
		List<DestinyVendorCategoriesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorCategoriesComponent.fromJson(item));
    });
    return list;
	}
}