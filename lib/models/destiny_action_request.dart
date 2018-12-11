class DestinyActionRequest{
	int membershipType;
	DestinyActionRequest(
		int this.membershipType,
	);

	static DestinyActionRequest fromJson(Map<String, dynamic> data){
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
      list.add(DestinyActionRequest.fromJson(item));
    });
    return list;
	}
}