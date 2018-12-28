
/* If you ever wondered how the Vault works, here it is.
The Vault is merely a set of inventory buckets that exist on your Profile/Account level. When you transfer items in the Vault, the game is using the Vault Vendor's DestinyVendorAcceptedItemDefinitions to see where the appropriate destination bucket is for the source bucket from whence your item is moving. If it finds such an entry, it transfers the item to the other bucket.
The mechanics for Postmaster works similarly, which is also a vendor. All driven by Accepted Items. */
class DestinyVendorAcceptedItemDefinition{
	
	/* The "source" bucket for a transfer. When a user wants to transfer an item, the appropriate DestinyVendorDefinition's acceptedItems property is evaluated, looking for an entry where acceptedInventoryBucketHash matches the bucket that the item being transferred is currently located. If it exists, the item will be transferred into whatever bucket is defined by destinationInventoryBucketHash. */
	int acceptedInventoryBucketHash;
	
	/* This is the bucket where the item being transferred will be put, given that it was being transferred *from* the bucket defined in acceptedInventoryBucketHash. */
	int destinationInventoryBucketHash;
	DestinyVendorAcceptedItemDefinition(
		this.acceptedInventoryBucketHash,
		this.destinationInventoryBucketHash,
	);

	static DestinyVendorAcceptedItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorAcceptedItemDefinition(
				data['acceptedInventoryBucketHash'],
				data['destinationInventoryBucketHash'],
		);
	}

	static List<DestinyVendorAcceptedItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorAcceptedItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorAcceptedItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['acceptedInventoryBucketHash'] = this.acceptedInventoryBucketHash;
			data['destinationInventoryBucketHash'] = this.destinationInventoryBucketHash;
		return data;
	}
}