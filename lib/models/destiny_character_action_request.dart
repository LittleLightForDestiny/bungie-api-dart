class DestinyCharacterActionRequest{
	int characterId;
	int membershipType;
	DestinyCharacterActionRequest(
		int this.characterId,
		int this.membershipType,
	);

	static DestinyCharacterActionRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterActionRequest(
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyCharacterActionRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterActionRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['characterId'] = characterId;
			data['membershipType'] = membershipType;
	}
}