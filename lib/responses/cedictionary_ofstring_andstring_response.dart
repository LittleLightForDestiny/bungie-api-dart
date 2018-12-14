class CEDictionaryOfstringAndstringResponse{
    Map<String, String> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    CEDictionaryOfstringAndstringResponse(
		Map<String, String> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEDictionaryOfstringAndstringResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CEDictionaryOfstringAndstringResponse(
				data['Response'] != null ? Map<String, String>.from(data['Response'].map((k, v)=>MapEntry(k, v))) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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