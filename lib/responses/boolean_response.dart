class booleanResponse{
    bool response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    booleanResponse(
		bool this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static booleanResponse fromJson(Map<String, dynamic> data){
		return new booleanResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<booleanResponse> fromList(List<dynamic> data){
		List<booleanResponse> list = new List();
    data.forEach((item) {
      list.add(booleanResponse.fromJson(item));
    });
    return list;
	}
}