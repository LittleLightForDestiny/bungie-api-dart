class DestinyVendorCategory{
	int displayCategoryIndex;
	List<int> itemIndexes;
	DestinyVendorCategory(
		int this.displayCategoryIndex,
		List<int> this.itemIndexes,
	);

	static DestinyVendorCategory fromJson(Map<String, dynamic> data){
		return new DestinyVendorCategory(
				data['displayCategoryIndex'],
				data['itemIndexes'],
		);
	}

	static List<DestinyVendorCategory> fromList(List<dynamic> data){
		List<DestinyVendorCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorCategory.fromJson(item));
    });
    return list;
	}
}