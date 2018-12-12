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