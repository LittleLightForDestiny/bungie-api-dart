class DestinyItemStateRequest{
	bool state;
	int itemId;
	int characterId;
	int membershipType;
	DestinyItemStateRequest(
		bool this.state,
		int this.itemId,
		int this.characterId,
		int this.membershipType,
	);

	static DestinyItemStateRequest fromJson(Map<String, dynamic> data){
		return new DestinyItemStateRequest(
				data['state'],
				data['itemId'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyItemStateRequest> fromList(List<dynamic> data){
		List<DestinyItemStateRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyItemStateRequest.fromJson(item));
    });
    return list;
	}
}