
/* The base item component, filled with properties that are generally useful to know in any item request or that don't feel worthwhile to put in their own component. */
class DestinyItemComponent{
	
	/* The identifier for the item's definition, which is where most of the useful static information for the item can be found. */
	int itemHash;
	
	/* If the item is instanced, it will have an instance ID. Lack of an instance ID implies that the item has no distinct local qualities aside from stack size. */
	String itemInstanceId;
	
	/* The quantity of the item in this stack. Note that Instanced items cannot stack. If an instanced item, this value will always be 1 (as the stack has exactly one item in it) */
	int quantity;
	
	/* If the item is bound to a location, it will be specified in this enum. */
	int bindStatus;
	
	/* An easy reference for where the item is located. Redundant if you got the item from an Inventory, but useful when making detail calls on specific items. */
	int location;
	
	/* The hash identifier for the specific inventory bucket in which the item is located. */
	int bucketHash;
	
	/* If there is a known error state that would cause this item to not be transferable, this Flags enum will indicate all of those error states. Otherwise, it will be 0 (CanTransfer). */
	int transferStatus;
	
	/* If the item can be locked, this will indicate that state. */
	bool lockable;
	
	/* A flags enumeration indicating the transient/custom states of the item that affect how it is rendered: whether it's tracked or locked for example, or whether it has a masterwork plug inserted. */
	int state;
	
	/* If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons/styles are on the item being sold.
If you don't do this, certain items whose styles are being overridden by socketed items - such as the "Recycle Shader" item - would show whatever their default icon/style is, and it wouldn't be pretty or look accurate. */
	int overrideStyleItemHash;
	
	/* If the item can expire, this is the date at which it will/did expire. */
	String expirationDate;
	DestinyItemComponent(
		this.itemHash,
		this.itemInstanceId,
		this.quantity,
		this.bindStatus,
		this.location,
		this.bucketHash,
		this.transferStatus,
		this.lockable,
		this.state,
		this.overrideStyleItemHash,
		this.expirationDate,
	);

	static DestinyItemComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponent(
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
				data['bindStatus'],
				data['location'],
				data['bucketHash'],
				data['transferStatus'],
				data['lockable'],
				data['state'],
				data['overrideStyleItemHash'],
				data['expirationDate'],
		);
	}

	static List<DestinyItemComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
			data['itemInstanceId'] = this.itemInstanceId;
			data['quantity'] = this.quantity;
			data['bindStatus'] = this.bindStatus;
			data['location'] = this.location;
			data['bucketHash'] = this.bucketHash;
			data['transferStatus'] = this.transferStatus;
			data['lockable'] = this.lockable;
			data['state'] = this.state;
			data['overrideStyleItemHash'] = this.overrideStyleItemHash;
			data['expirationDate'] = this.expirationDate;
		return data;
	}
}