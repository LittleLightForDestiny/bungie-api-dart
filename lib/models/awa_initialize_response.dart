class AwaInitializeResponse{
	String correlationId;
	bool sentToSelf;
	AwaInitializeResponse(
		String this.correlationId,
		bool this.sentToSelf,
	);

	static AwaInitializeResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaInitializeResponse(
				data['correlationId'],
				data['sentToSelf'],
		);
	}

	static List<AwaInitializeResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaInitializeResponse> list = new List();
    data.forEach((item) {
      list.add(AwaInitializeResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['correlationId'] = correlationId;
			data['sentToSelf'] = sentToSelf;
	}
}