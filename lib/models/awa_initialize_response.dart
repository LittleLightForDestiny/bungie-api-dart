class AwaInitializeResponse{
	String correlationId;
	bool sentToSelf;
	AwaInitializeResponse(
		String this.correlationId,
		bool this.sentToSelf,
	);

	static AwaInitializeResponse fromJson(Map<String, dynamic> data){
		return new AwaInitializeResponse(
				data['correlationId'],
				data['sentToSelf'],
		);
	}

	static List<AwaInitializeResponse> fromList(List<dynamic> data){
		List<AwaInitializeResponse> list = new List();
    data.forEach((item) {
      list.add(AwaInitializeResponse.fromJson(item));
    });
    return list;
	}
}