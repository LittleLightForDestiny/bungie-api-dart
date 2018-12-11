class DestinyItemActionRequest{
	int itemId;
	int characterId;
	int membershipType;
	DestinyItemActionRequest(
		int this.itemId,
		int this.characterId,
		int this.membershipType,
	);

	static DestinyItemActionRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemActionRequest(
				data['itemId'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyItemActionRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyItemActionRequest.fromJson(item));
    });
    return list;
	}
}