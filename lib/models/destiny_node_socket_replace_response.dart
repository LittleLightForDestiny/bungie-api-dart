class DestinyNodeSocketReplaceResponse{
	int socketTypeHash;
	int plugItemHash;
	DestinyNodeSocketReplaceResponse(
		int this.socketTypeHash,
		int this.plugItemHash,
	);

	static DestinyNodeSocketReplaceResponse fromJson(Map<String, dynamic> data){
		return new DestinyNodeSocketReplaceResponse(
				data['socketTypeHash'],
				data['plugItemHash'],
		);
	}

	static List<DestinyNodeSocketReplaceResponse> fromList(List<dynamic> data){
		List<DestinyNodeSocketReplaceResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyNodeSocketReplaceResponse.fromJson(item));
    });
    return list;
	}
}