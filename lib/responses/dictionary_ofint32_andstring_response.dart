class DictionaryOfint32AndstringResponse{
    Map<String, dynamic> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DictionaryOfint32AndstringResponse(
		Map<String, dynamic> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DictionaryOfint32AndstringResponse fromJson(Map<String, dynamic> data){
		return new DictionaryOfint32AndstringResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DictionaryOfint32AndstringResponse> fromList(List<dynamic> data){
		List<DictionaryOfint32AndstringResponse> list = new List();
    data.forEach((item) {
      list.add(DictionaryOfint32AndstringResponse.fromJson(item));
    });
    return list;
	}
}