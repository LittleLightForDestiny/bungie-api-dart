class DestinyNodeSocketReplaceResponse{
	int socketTypeHash;
	int plugItemHash;
	DestinyNodeSocketReplaceResponse(
		this.socketTypeHash,
		this.plugItemHash,
	);

	static DestinyNodeSocketReplaceResponse fromMap(Map<String, dynamic> data){
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
      list.add(DestinyNodeSocketReplaceResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['socketTypeHash'] = this.socketTypeHash;
			data['plugItemHash'] = this.plugItemHash;
		return data;
	}
}