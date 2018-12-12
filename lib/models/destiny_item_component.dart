class DestinyItemComponent{
	int itemHash;
	String itemInstanceId;
	int quantity;
	int bindStatus;
	int location;
	int bucketHash;
	int transferStatus;
	bool lockable;
	int state;
	int overrideStyleItemHash;
	String expirationDate;
	DestinyItemComponent(
		int this.itemHash,
		String this.itemInstanceId,
		int this.quantity,
		int this.bindStatus,
		int this.location,
		int this.bucketHash,
		int this.transferStatus,
		bool this.lockable,
		int this.state,
		int this.overrideStyleItemHash,
		String this.expirationDate,
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