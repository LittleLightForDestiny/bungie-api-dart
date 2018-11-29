class AwaUserResponse{
	int selection;
	String correlationId;
	List<String> nonce;
	AwaUserResponse(
		int this.selection,
		String this.correlationId,
		List<String> this.nonce,
	);

	static AwaUserResponse fromJson(Map<String, dynamic> data){
		return new AwaUserResponse(
				data['selection'],
				data['correlationId'],
				data['nonce'],
		);
	}

	static List<AwaUserResponse> fromList(List<dynamic> data){
		List<AwaUserResponse> list = new List();
    data.forEach((item) {
      list.add(AwaUserResponse.fromJson(item));
    });
    return list;
	}
}