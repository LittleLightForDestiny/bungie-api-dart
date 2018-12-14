class booleanResponse{
    bool response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    booleanResponse(
		bool this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static booleanResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new booleanResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<booleanResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<booleanResponse> list = new List();
    data.forEach((item) {
      list.add(booleanResponse.fromMap(item));
    });
    return list;
	}
}