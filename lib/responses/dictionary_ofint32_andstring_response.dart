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

    static DictionaryOfint32AndstringResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DictionaryOfint32AndstringResponse> list = new List();
    data.forEach((item) {
      list.add(DictionaryOfint32AndstringResponse.fromMap(item));
    });
    return list;
	}
}