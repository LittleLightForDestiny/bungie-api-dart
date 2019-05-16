
/**  */
class DestinyItemTransferRequest{
	
	/**  */
	int itemReferenceHash;
	
	/**  */
	int stackSize;
	
	/**  */
	bool transferToVault;
	
	/**  */
	String itemId;
	
	/**  */
	String characterId;
	
	/**  */
	int membershipType;
	DestinyItemTransferRequest(
		this.itemReferenceHash,
		this.stackSize,
		this.transferToVault,
		this.itemId,
		this.characterId,
		this.membershipType,
	);

	static DestinyItemTransferRequest fromMap(Map<String, dynamic> data){
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
      list.add(DestinyItemTransferRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemReferenceHash'] = this.itemReferenceHash;
			data['stackSize'] = this.stackSize;
			data['transferToVault'] = this.transferToVault;
			data['itemId'] = this.itemId;
			data['characterId'] = this.characterId;
			data['membershipType'] = this.membershipType;
		return data;
	}
}