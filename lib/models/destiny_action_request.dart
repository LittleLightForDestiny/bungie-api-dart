class DestinyActionRequest{
	int membershipType;
	DestinyActionRequest(
		int this.membershipType,
	);

	static DestinyActionRequest fromJson(Map<String, dynamic> data){
		return new DestinyActionRequest(
				data['membershipType'],
		);
	}

	static List<DestinyActionRequest> fromList(List<dynamic> data){
		List<DestinyActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyActionRequest.fromJson(item));
    });
    return list;
	}
}