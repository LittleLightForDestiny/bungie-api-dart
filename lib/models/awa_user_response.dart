
/*  */
class AwaUserResponse{
	
	/* Indication of the selection the user has made (Approving or rejecting the action) */
	int selection;
	
	/* Correlation ID of the request */
	String correlationId;
	
	/* Secret nonce received via the PUSH notification. */
	List<int> nonce;
	AwaUserResponse(
		this.selection,
		this.correlationId,
		this.nonce,
	);

	static AwaUserResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaUserResponse(
				data['selection'],
				data['correlationId'],
				data['nonce'] != null ? data['nonce']?.cast<int>() ?? null : null,
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