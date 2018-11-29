class int64Response{
    int Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    int64Response(
		int this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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