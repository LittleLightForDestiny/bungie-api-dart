import 'destiny_display_properties_definition.dart';

/* An Inventory (be it Character or Profile level) is comprised of many Buckets. An example of a bucket is "Primary Weapons", where all of the primary weapons on a character are gathered together into a single visual element in the UI: a subset of the inventory that has a limited number of slots, and in this case also has an associated Equipment Slot for equipping an item in the bucket.
Item definitions declare what their "default" bucket is (DestinyInventoryItemDefinition.inventory.bucketTypeHash), and Item instances will tell you which bucket they are currently residing in (DestinyItemComponent.bucketHash). You can use this information along with the DestinyInventoryBucketDefinition to show these items grouped by bucket.
You cannot transfer an item to a bucket that is not its Default without going through a Vendor's "accepted items" (DestinyVendorDefinition.acceptedItems). This is how transfer functionality like the Vault is implemented, as a feature of a Vendor. See the vendor's acceptedItems property for more details. */
class DestinyInventoryBucketDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* Where the bucket is found. 0 = Character, 1 = Account */
	int scope;
	
	/* An enum value for what items can be found in the bucket. See the BucketCategory enum for more details. */
	int category;
	
	/* Use this property to provide a quick-and-dirty recommended ordering for buckets in the UI. Most UIs will likely want to forsake this for something more custom and manual. */
	int bucketOrder;
	
	/* The maximum # of item "slots" in a bucket. A slot is a given combination of item + quantity.
For instance, a Weapon will always take up a single slot, and always have a quantity of 1. But a material could take up only a single slot with hundreds of quantity. */
	int itemCount;
	
	/* Sometimes, inventory buckets represent conceptual "locations" in the game that might not be expected. This value indicates the conceptual location of the bucket, regardless of where it is actually contained on the character/account. 
See ItemLocation for details. 
Note that location includes the Vault and the Postmaster (both of whom being just inventory buckets with additional actions that can be performed on them through a Vendor) */
	int location;
	
	/* If TRUE, there is at least one Vendor that can transfer items to/from this bucket. See the DestinyVendorDefinition's acceptedItems property for more information on how transferring works. */
	bool hasTransferDestination;
	
	/* If True, this bucket is enabled. Disabled buckets may include buckets that were included for test purposes, or that were going to be used but then were abandoned but never removed from content *cough*. */
	bool enabled;
	
	/* if a FIFO bucket fills up, it will delete the oldest item from said bucket when a new item tries to be added to it. If this is FALSE, the bucket will not allow new items to be placed in it until room is made by the user manually deleting items from it. You can see an example of this with the Postmaster's bucket. */
	bool fifo;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyInventoryBucketDefinition(
		this.displayProperties,
		this.scope,
		this.category,
		this.bucketOrder,
		this.itemCount,
		this.location,
		this.hasTransferDestination,
		this.enabled,
		this.fifo,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyInventoryBucketDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInventoryBucketDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['scope'],
				data['category'],
				data['bucketOrder'],
				data['itemCount'],
				data['location'],
				data['hasTransferDestination'],
				data['enabled'],
				data['fifo'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyInventoryBucketDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInventoryBucketDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryBucketDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['scope'] = this.scope;
			data['category'] = this.category;
			data['bucketOrder'] = this.bucketOrder;
			data['itemCount'] = this.itemCount;
			data['location'] = this.location;
			data['hasTransferDestination'] = this.hasTransferDestination;
			data['enabled'] = this.enabled;
			data['fifo'] = this.fifo;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}