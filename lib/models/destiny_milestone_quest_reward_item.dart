
/** A subclass of DestinyItemQuantity, that provides not just the item and its quantity but also information that BNet can - at some point - use internally to provide more robust runtime information about the item's qualities.
If you want it, please ask! We're just out of time to wire it up right now. Or a clever person just may do it with our existing endpoints. */
class DestinyMilestoneQuestRewardItem{
	
	/** The quest reward item *may* be associated with a vendor. If so, this is that vendor. Use this hash to look up the DestinyVendorDefinition. */
	int vendorHash;
	
	/** The quest reward item *may* be associated with a vendor. If so, this is the index of the item being sold, which we can use at runtime to find instanced item information for the reward item. */
	int vendorItemIndex;
	
	/** The hash identifier for the item in question. Use it to look up the item's DestinyInventoryItemDefinition. */
	int itemHash;
	
	/** If this quantity is referring to a specific instance of an item, this will have the item's instance ID. Normally, this will be null. */
	String itemInstanceId;
	
	/** The amount of the item needed/available depending on the context of where DestinyItemQuantity is being used. */
	int quantity;
	DestinyMilestoneQuestRewardItem(
		this.vendorHash,
		this.vendorItemIndex,
		this.itemHash,
		this.itemInstanceId,
		this.quantity,
	);

	static DestinyMilestoneQuestRewardItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuestRewardItem(
				data['vendorHash'],
				data['vendorItemIndex'],
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyMilestoneQuestRewardItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuestRewardItem> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuestRewardItem.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['vendorItemIndex'] = this.vendorItemIndex;
			data['itemHash'] = this.itemHash;
			data['itemInstanceId'] = this.itemInstanceId;
			data['quantity'] = this.quantity;
		return data;
	}
}