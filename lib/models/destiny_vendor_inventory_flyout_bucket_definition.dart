
/** Information about a single inventory bucket in a vendor flyout UI and how it is shown. */
class DestinyVendorInventoryFlyoutBucketDefinition{
	
	/** If true, the inventory bucket should be able to be collapsed visually. */
	bool collapsible;
	
	/** The inventory bucket whose contents should be shown. */
	int inventoryBucketHash;
	
	/** The methodology to use for sorting items from the flyout. */
	int sortItemsBy;
	DestinyVendorInventoryFlyoutBucketDefinition(
		this.collapsible,
		this.inventoryBucketHash,
		this.sortItemsBy,
	);

	static DestinyVendorInventoryFlyoutBucketDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyVendorInventoryFlyoutBucketDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['collapsible'] = this.collapsible;
			data['inventoryBucketHash'] = this.inventoryBucketHash;
			data['sortItemsBy'] = this.sortItemsBy;
		return data;
	}
}