class DestinyVendorAcceptedItemDefinition{
	int acceptedInventoryBucketHash;
	int destinationInventoryBucketHash;
	DestinyVendorAcceptedItemDefinition(
		int this.acceptedInventoryBucketHash,
		int this.destinationInventoryBucketHash,
	);

	static DestinyVendorAcceptedItemDefinition fromJson(Map<String, dynamic> data){
		return new DestinyVendorAcceptedItemDefinition(
				data['acceptedInventoryBucketHash'],
				data['destinationInventoryBucketHash'],
		);
	}

	static List<DestinyVendorAcceptedItemDefinition> fromList(List<dynamic> data){
		List<DestinyVendorAcceptedItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorAcceptedItemDefinition.fromJson(item));
    });
    return list;
	}
}