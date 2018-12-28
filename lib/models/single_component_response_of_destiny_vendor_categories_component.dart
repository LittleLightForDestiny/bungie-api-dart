import 'destiny_vendor_categories_component.dart';

/**  */
class SingleComponentResponseOfDestinyVendorCategoriesComponent{
	
	/** A vendor can have many categories of items that they sell. This component will return the category information for available items, as well as the index into those items in the user's sale item list.
Note that, since both the category and items are indexes, this data is Content Version dependent. Be sure to check that your content is up to date before using this data. This is an unfortunate, but permanent, limitation of Vendor data. */
	DestinyVendorCategoriesComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyVendorCategoriesComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorCategoriesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyVendorCategoriesComponent(
				data['data'] != null ? DestinyVendorCategoriesComponent.fromMap(data['data']) : null,
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