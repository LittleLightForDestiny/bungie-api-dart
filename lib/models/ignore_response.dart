class IgnoreResponse{
	bool isIgnored;
	int ignoreFlags;
	IgnoreResponse(
		bool this.isIgnored,
		int this.ignoreFlags,
	);

	static IgnoreResponse fromJson(Map<String, dynamic> data){
		return new IgnoreResponse(
				data['isIgnored'],
				data['ignoreFlags'],
		);
	}

	static List<IgnoreResponse> fromList(List<dynamic> data){
		List<IgnoreResponse> list = new List();
    data.forEach((item) {
      list.add(IgnoreResponse.fromJson(item));
    });
    return list;
	}
}