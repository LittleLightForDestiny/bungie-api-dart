class DictionaryOfint32AndstringResponse{
    Map<String, dynamic> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DictionaryOfint32AndstringResponse(
		Map<String, dynamic> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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