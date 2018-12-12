import 'destiny_vendor_categories_component.dart';
class SingleComponentResponseOfDestinyVendorCategoriesComponent{
	DestinyVendorCategoriesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyVendorCategoriesComponent(
		DestinyVendorCategoriesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorCategoriesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyVendorCategoriesComponent(
				DestinyVendorCategoriesComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyVendorCategoriesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyVendorCategoriesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyVendorCategoriesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}