
/** If the item can exist in an inventory - the overwhelming majority of them can and do - then this is the basic properties regarding the item's relationship with the inventory. */
class DestinyItemInventoryBlockDefinition{
	
	/** If this string is populated, you can't have more than one stack with this label in a given inventory. Note that this is different from the equipping block's unique label, which is used for equipping uniqueness. */
	String stackUniqueLabel;
	
	/** The maximum quantity of this item that can exist in a stack. */
	int maxStackSize;
	
	/** The hash identifier for the DestinyInventoryBucketDefinition to which this item belongs. I should have named this "bucketHash", but too many things refer to it now. Sigh. */
	int bucketTypeHash;
	
	/** If the item is picked up by the lost loot queue, this is the hash identifier for the DestinyInventoryBucketDefinition into which it will be placed. Again, I should have named this recoveryBucketHash instead. */
	int recoveryBucketTypeHash;
	
	/** The hash identifier for the Tier Type of the item, use to look up its DestinyItemTierTypeDefinition if you need to show localized data for the item's tier. */
	int tierTypeHash;
	
	/** If TRUE, this item is instanced. Otherwise, it is a generic item that merely has a quantity in a stack (like Glimmer). */
	bool isInstanceItem;
	
	/** The localized name of the tier type, which is a useful shortcut so you don't have to look up the definition every time. However, it's mostly a holdover from days before we had a DestinyItemTierTypeDefinition to refer to. */
	String tierTypeName;
	
	/** The enumeration matching the tier type of the item to known values, again for convenience sake. */
	int tierType;
	
	/** The tooltip message to show, if any, when the item expires. */
	String expirationTooltip;
	
	/** If the item expires while playing in an activity, we show a different message. */
	String expiredInActivityMessage;
	
	/** If the item expires in orbit, we show a... more different message. ("Consummate V's, consummate!") */
	String expiredInOrbitMessage;
	
	/**  */
	bool suppressExpirationWhenObjectivesComplete;
	DestinyItemInventoryBlockDefinition(
		this.stackUniqueLabel,
		this.maxStackSize,
		this.bucketTypeHash,
		this.recoveryBucketTypeHash,
		this.tierTypeHash,
		this.isInstanceItem,
		this.tierTypeName,
		this.tierType,
		this.expirationTooltip,
		this.expiredInActivityMessage,
		this.expiredInOrbitMessage,
		this.suppressExpirationWhenObjectivesComplete,
	);

	static DestinyItemInventoryBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemInventoryBlockDefinition(
				data['stackUniqueLabel'],
				data['maxStackSize'],
				data['bucketTypeHash'],
				data['recoveryBucketTypeHash'],
				data['tierTypeHash'],
				data['isInstanceItem'],
				data['tierTypeName'],
				data['tierType'],
				data['expirationTooltip'],
				data['expiredInActivityMessage'],
				data['expiredInOrbitMessage'],
				data['suppressExpirationWhenObjectivesComplete'],
		);
	}

	static List<DestinyItemInventoryBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemInventoryBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemInventoryBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['stackUniqueLabel'] = this.stackUniqueLabel;
			data['maxStackSize'] = this.maxStackSize;
			data['bucketTypeHash'] = this.bucketTypeHash;
			data['recoveryBucketTypeHash'] = this.recoveryBucketTypeHash;
			data['tierTypeHash'] = this.tierTypeHash;
			data['isInstanceItem'] = this.isInstanceItem;
			data['tierTypeName'] = this.tierTypeName;
			data['tierType'] = this.tierType;
			data['expirationTooltip'] = this.expirationTooltip;
			data['expiredInActivityMessage'] = this.expiredInActivityMessage;
			data['expiredInOrbitMessage'] = this.expiredInOrbitMessage;
			data['suppressExpirationWhenObjectivesComplete'] = this.suppressExpirationWhenObjectivesComplete;
		return data;
	}
}