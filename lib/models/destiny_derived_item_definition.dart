
/** This is a reference to, and summary data for, a specific item that you can get as a result of Using or Acquiring some other Item (For example, this could be summary information for an Emote that you can get by opening an an Eververse Box) See DestinyDerivedItemCategoryDefinition for more information. */
class DestinyDerivedItemDefinition{
	
	/** The hash for the DestinyInventoryItemDefinition of this derived item, if there is one. Sometimes we are given this information as a manual override, in which case there won't be an actual DestinyInventoryItemDefinition for what we display, but you can still show the strings from this object itself. */
	int itemHash;
	
	/** The name of the derived item. */
	String itemName;
	
	/** Additional details about the derived item, in addition to the description. */
	String itemDetail;
	
	/** A brief description of the item. */
	String itemDescription;
	
	/** An icon for the item. */
	String iconPath;
	
	/** If the item was derived from a "Preview Vendor", this will be an index into the DestinyVendorDefinition's itemList property. Otherwise, -1. */
	int vendorItemIndex;
	DestinyDerivedItemDefinition(
		this.itemHash,
		this.itemName,
		this.itemDetail,
		this.itemDescription,
		this.iconPath,
		this.vendorItemIndex,
	);

	static DestinyDerivedItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDerivedItemDefinition(
				data['itemHash'],
				data['itemName'],
				data['itemDetail'],
				data['itemDescription'],
				data['iconPath'],
				data['vendorItemIndex'],
		);
	}

	static List<DestinyDerivedItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDerivedItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDerivedItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
			data['itemName'] = this.itemName;
			data['itemDetail'] = this.itemDetail;
			data['itemDescription'] = this.itemDescription;
			data['iconPath'] = this.iconPath;
			data['vendorItemIndex'] = this.vendorItemIndex;
		return data;
	}
}