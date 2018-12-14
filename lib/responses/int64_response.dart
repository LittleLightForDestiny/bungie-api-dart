class int64Response{
    String response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    int64Response(
		String this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static int64Response fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new int64Response(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<int64Response> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<int64Response> list = new List();
    data.forEach((item) {
      list.add(int64Response.fromMap(item));
    });
    return list;
	}
}