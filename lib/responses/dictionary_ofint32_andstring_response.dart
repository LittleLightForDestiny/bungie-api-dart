class DictionaryOfint32AndstringResponse{
    Map<String, String> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DictionaryOfint32AndstringResponse(
		Map<String, String> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DictionaryOfint32AndstringResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryOfint32AndstringResponse(
				data['Response'] != null ? Map<String, String>.from(data['Response'].map((k, v)=>MapEntry(k, v))) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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