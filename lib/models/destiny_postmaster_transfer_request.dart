
/**  */
class DestinyPostmasterTransferRequest{
	
	/**  */
	int itemReferenceHash;
	
	/**  */
	int stackSize;
	
	/**  */
	String itemId;
	
	/**  */
	String characterId;
	
	/**  */
	int membershipType;
	DestinyPostmasterTransferRequest(
		this.itemReferenceHash,
		this.stackSize,
		this.itemId,
		this.characterId,
		this.membershipType,
	);

	static DestinyPostmasterTransferRequest fromMap(Map<String, dynamic> data){
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
      list.add(DestinyPostmasterTransferRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemReferenceHash'] = this.itemReferenceHash;
			data['stackSize'] = this.stackSize;
			data['itemId'] = this.itemId;
			data['characterId'] = this.characterId;
			data['membershipType'] = this.membershipType;
		return data;
	}
}