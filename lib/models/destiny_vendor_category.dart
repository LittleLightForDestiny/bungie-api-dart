class DestinyVendorCategory{
	int displayCategoryIndex;
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