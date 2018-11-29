class DestinyItemQuantity{
	int itemHash;
	int itemInstanceId;
	int quantity;
	DestinyItemQuantity(
		int this.itemHash,
		int this.itemInstanceId,
		int this.quantity,
	);

	static DestinyItemQuantity fromJson(Map<String, dynamic> data){
		return new DestinyItemQuantity(
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyItemQuantity> fromList(List<dynamic> data){
		List<DestinyItemQuantity> list = new List();
    data.forEach((item) {
      list.add(DestinyItemQuantity.fromJson(item));
    });
    return list;
	}
}