class DestinyItemSetActionRequest{
	List<int> itemIds;
	int characterId;
	int membershipType;
	DestinyItemSetActionRequest(
		List<int> this.itemIds,
		int this.characterId,
		int this.membershipType,
	);

	static DestinyItemSetActionRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSetActionRequest(
				data['itemIds'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyItemSetActionRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSetActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSetActionRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemIds'] = this.itemIds;
			data['characterId'] = this.characterId;
			data['membershipType'] = this.membershipType;
		return data;
	}
}