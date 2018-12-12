class DestinyItemStateRequest{
	bool state;
	String itemId;
	String characterId;
	int membershipType;
	DestinyItemStateRequest(
		bool this.state,
		String this.itemId,
		String this.characterId,
		int this.membershipType,
	);

	static DestinyItemStateRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemStateRequest(
				data['state'],
				data['itemId'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyItemStateRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemStateRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyItemStateRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['state'] = this.state;
			data['itemId'] = this.itemId;
			data['characterId'] = this.characterId;
			data['membershipType'] = this.membershipType;
		return data;
	}
}