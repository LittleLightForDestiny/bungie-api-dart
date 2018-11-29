class DestinyCharacterActionRequest{
	int characterId;
	int membershipType;
	DestinyCharacterActionRequest(
		int this.characterId,
		int this.membershipType,
	);

	static DestinyCharacterActionRequest fromJson(Map<String, dynamic> data){
		return new DestinyCharacterActionRequest(
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyCharacterActionRequest> fromList(List<dynamic> data){
		List<DestinyCharacterActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterActionRequest.fromJson(item));
    });
    return list;
	}
}