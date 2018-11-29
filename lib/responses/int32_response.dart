class int32Response{
    int Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    int32Response(
		int this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static int32Response fromJson(Map<String, dynamic> data){
		return new int32Response(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<int32Response> fromList(List<dynamic> data){
		List<int32Response> list = new List();
    data.forEach((item) {
      list.add(int32Response.fromJson(item));
    });
    return list;
	}
}