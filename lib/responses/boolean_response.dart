class booleanResponse{
    bool Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    booleanResponse(
		bool this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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