import 'destiny_vendor_category.dart';

/** A vendor can have many categories of items that they sell. This component will return the category information for available items, as well as the index into those items in the user's sale item list.
Note that, since both the category and items are indexes, this data is Content Version dependent. Be sure to check that your content is up to date before using this data. This is an unfortunate, but permanent, limitation of Vendor data. */
class DestinyVendorCategoriesComponent{
	
	/** The list of categories for items that the vendor sells, in rendering order.
These categories each point to a "display category" in the displayCategories property of the DestinyVendorDefinition, as opposed to the other categories. */
	List<DestinyVendorCategory> categories;
	DestinyVendorCategoriesComponent(
		this.categories,
	);

	static DestinyVendorCategoriesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorCategoriesComponent(
				data['categories'] != null ? DestinyVendorCategory.fromList(data['categories']) : null,
		);
	}

	static List<DestinyVendorCategoriesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorCategoriesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorCategoriesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categories'] = this.categories.map((item)=>item.toMap()).toList();
		return data;
	}
}