class DestinyVendorInventoryFlyoutBucketDefinition{
	bool collapsible;
	int inventoryBucketHash;
	int sortItemsBy;
	DestinyVendorInventoryFlyoutBucketDefinition(
		bool this.collapsible,
		int this.inventoryBucketHash,
		int this.sortItemsBy,
	);

	static DestinyVendorInventoryFlyoutBucketDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInventoryFlyoutBucketDefinition(
				data['collapsible'],
				data['inventoryBucketHash'],
				data['sortItemsBy'],
		);
	}

	static List<DestinyVendorInventoryFlyoutBucketDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorInventoryFlyoutBucketDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorInventoryFlyoutBucketDefinition.fromJson(item));
    });
    return list;
	}
}