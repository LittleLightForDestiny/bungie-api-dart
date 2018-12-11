class int64Response{
    int response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    int64Response(
		int this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static int64Response fromJson(Map<String, dynamic> data){
		return new int64Response(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<int64Response> fromList(List<dynamic> data){
		List<int64Response> list = new List();
    data.forEach((item) {
      list.add(int64Response.fromJson(item));
    });
    return list;
	}
}