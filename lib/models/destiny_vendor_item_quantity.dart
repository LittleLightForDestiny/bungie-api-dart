
/* In addition to item quantity information for vendor prices, this also has any optional information that may exist about how the item's quantity can be modified. (unfortunately not information that is able to be read outside of the BNet servers, but it's there) */
class DestinyVendorItemQuantity{
	
	/* The hash identifier for the item in question. Use it to look up the item's DestinyInventoryItemDefinition. */
	int itemHash;
	
	/* If this quantity is referring to a specific instance of an item, this will have the item's instance ID. Normally, this will be null. */
	String itemInstanceId;
	
	/* The amount of the item needed/available depending on the context of where DestinyItemQuantity is being used. */
	int quantity;
	DestinyVendorItemQuantity(
		this.itemHash,
		this.itemInstanceId,
		this.quantity,
	);

	static DestinyVendorItemQuantity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorItemQuantity(
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyVendorItemQuantity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorItemQuantity> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorItemQuantity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
			data['itemInstanceId'] = this.itemInstanceId;
			data['quantity'] = this.quantity;
		return data;
	}
}