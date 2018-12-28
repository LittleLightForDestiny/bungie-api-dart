
/** Information about the category and items currently sold in that category. */
class DestinyVendorCategory{
	
	/** An index into the DestinyVendorDefinition.displayCategories property, so you can grab the display data for this category. */
	int displayCategoryIndex;
	
	/** An ordered list of indexes into items being sold in this category (DestinyVendorDefinition.itemList) which will contain more information about the items being sold themselves. Can also be used to index into DestinyVendorSaleItemComponent data, if you asked for that data to be returned. */
	List<int> itemIndexes;
	DestinyVendorCategory(
		this.displayCategoryIndex,
		this.itemIndexes,
	);

	static DestinyVendorCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorCategory(
				data['displayCategoryIndex'],
				data['itemIndexes'] != null ? data['itemIndexes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyVendorCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorCategory.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayCategoryIndex'] = this.displayCategoryIndex;
			data['itemIndexes'] = this.itemIndexes;
		return data;
	}
}