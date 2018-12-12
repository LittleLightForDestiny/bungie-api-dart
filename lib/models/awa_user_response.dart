class AwaUserResponse{
	int selection;
	String correlationId;
	List<String> nonce;
	AwaUserResponse(
		int this.selection,
		String this.correlationId,
		List<String> this.nonce,
	);

	static AwaUserResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaUserResponse(
				data['selection'],
				data['correlationId'],
				data['nonce'],
		);
	}

	static List<AwaUserResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaUserResponse> list = new List();
    data.forEach((item) {
      list.add(AwaUserResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['selection'] = this.selection;
			data['correlationId'] = this.correlationId;
			data['nonce'] = this.nonce;
		return data;
	}
}