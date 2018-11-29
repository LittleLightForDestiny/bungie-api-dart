class DestinyItemInventoryBlockDefinition{
	String stackUniqueLabel;
	int maxStackSize;
	int bucketTypeHash;
	int recoveryBucketTypeHash;
	int tierTypeHash;
	bool isInstanceItem;
	String tierTypeName;
	int tierType;
	String expirationTooltip;
	String expiredInActivityMessage;
	String expiredInOrbitMessage;
	bool suppressExpirationWhenObjectivesComplete;
	DestinyItemInventoryBlockDefinition(
		String this.stackUniqueLabel,
		int this.maxStackSize,
		int this.bucketTypeHash,
		int this.recoveryBucketTypeHash,
		int this.tierTypeHash,
		bool this.isInstanceItem,
		String this.tierTypeName,
		int this.tierType,
		String this.expirationTooltip,
		String this.expiredInActivityMessage,
		String this.expiredInOrbitMessage,
		bool this.suppressExpirationWhenObjectivesComplete,
	);

	static DestinyItemInventoryBlockDefinition fromJson(Map<String, dynamic> data){
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
		List<DestinyItemInventoryBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemInventoryBlockDefinition.fromJson(item));
    });
    return list;
	}
}