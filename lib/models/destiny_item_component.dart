class DestinyItemComponent{
	int itemHash;
	int itemInstanceId;
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
		int this.itemInstanceId,
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

	static DestinyItemComponent fromJson(Map<String, dynamic> data){
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
		List<DestinyItemComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponent.fromJson(item));
    });
    return list;
	}
}