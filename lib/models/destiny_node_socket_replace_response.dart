class DestinyNodeSocketReplaceResponse{
	int socketTypeHash;
	int plugItemHash;
	DestinyNodeSocketReplaceResponse(
		int this.socketTypeHash,
		int this.plugItemHash,
	);

	static DestinyNodeSocketReplaceResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyNodeSocketReplaceResponse(
				data['socketTypeHash'],
				data['plugItemHash'],
		);
	}

	static List<DestinyNodeSocketReplaceResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyNodeSocketReplaceResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyNodeSocketReplaceResponse.fromJson(item));
    });
    return list;
	}
}