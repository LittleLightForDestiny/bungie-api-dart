class DestinyActionRequest{
	int membershipType;
	DestinyActionRequest(
		int this.membershipType,
	);

	static DestinyActionRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActionRequest(
				data['membershipType'],
		);
	}

	static List<DestinyActionRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyActionRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['membershipType'] = this.membershipType;
		return data;
	}
}