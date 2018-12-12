class CEDictionaryOfstringAndstringResponse{
    Map<String, dynamic> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    CEDictionaryOfstringAndstringResponse(
		Map<String, dynamic> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEDictionaryOfstringAndstringResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CEDictionaryOfstringAndstringResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CEDictionaryOfstringAndstringResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CEDictionaryOfstringAndstringResponse> list = new List();
    data.forEach((item) {
      list.add(CEDictionaryOfstringAndstringResponse.fromMap(item));
    });
    return list;
	}
}