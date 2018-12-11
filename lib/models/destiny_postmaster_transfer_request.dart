class DestinyPostmasterTransferRequest{
	int itemReferenceHash;
	int stackSize;
	int itemId;
	int characterId;
	int membershipType;
	DestinyPostmasterTransferRequest(
		int this.itemReferenceHash,
		int this.stackSize,
		int this.itemId,
		int this.characterId,
		int this.membershipType,
	);

	static DestinyPostmasterTransferRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostmasterTransferRequest(
				data['itemReferenceHash'],
				data['stackSize'],
				data['itemId'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyPostmasterTransferRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPostmasterTransferRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyPostmasterTransferRequest.fromJson(item));
    });
    return list;
	}
}