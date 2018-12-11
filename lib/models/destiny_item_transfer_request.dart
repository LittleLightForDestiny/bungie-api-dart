class DestinyItemTransferRequest{
	int itemReferenceHash;
	int stackSize;
	bool transferToVault;
	int itemId;
	int characterId;
	int membershipType;
	DestinyItemTransferRequest(
		int this.itemReferenceHash,
		int this.stackSize,
		bool this.transferToVault,
		int this.itemId,
		int this.characterId,
		int this.membershipType,
	);

	static DestinyItemTransferRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTransferRequest(
				data['itemReferenceHash'],
				data['stackSize'],
				data['transferToVault'],
				data['itemId'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyItemTransferRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemTransferRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTransferRequest.fromJson(item));
    });
    return list;
	}
}