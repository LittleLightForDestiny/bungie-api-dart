import 'destiny_vendor_categories_component.dart';
class SingleComponentResponseOfDestinyVendorCategoriesComponent{
	DestinyVendorCategoriesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyVendorCategoriesComponent(
		DestinyVendorCategoriesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorCategoriesComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyVendorCategoriesComponent(
				DestinyVendorCategoriesComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyVendorCategoriesComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyVendorCategoriesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyVendorCategoriesComponent.fromJson(item));
    });
    return list;
	}
}