
/* Used in a number of Destiny contracts to return data about an item stack and its quantity. Can optionally return an itemInstanceId if the item is instanced - in which case, the quantity returned will be 1. If it's not... uh, let me know okay? Thanks. */
class DestinyItemQuantity{
	
	/* The hash identifier for the item in question. Use it to look up the item's DestinyInventoryItemDefinition. */
	int itemHash;
	
	/* If this quantity is referring to a specific instance of an item, this will have the item's instance ID. Normally, this will be null. */
	String itemInstanceId;
	
	/* The amount of the item needed/available depending on the context of where DestinyItemQuantity is being used. */
	int quantity;
	DestinyItemQuantity(
		this.itemHash,
		this.itemInstanceId,
		this.quantity,
	);

	static DestinyItemQuantity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemQuantity(
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyItemQuantity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemQuantity> list = new List();
    data.forEach((item) {
      list.add(DestinyItemQuantity.fromMap(item));
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