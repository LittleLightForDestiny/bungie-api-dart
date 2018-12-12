class IgnoreResponse{
	bool isIgnored;
	int ignoreFlags;
	IgnoreResponse(
		bool this.isIgnored,
		int this.ignoreFlags,
	);

	static IgnoreResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new IgnoreResponse(
				data['isIgnored'],
				data['ignoreFlags'],
		);
	}

	static List<IgnoreResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<IgnoreResponse> list = new List();
    data.forEach((item) {
      list.add(IgnoreResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['isIgnored'] = this.isIgnored;
			data['ignoreFlags'] = this.ignoreFlags;
		return data;
	}
}