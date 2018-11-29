class CEDictionaryOfstringAndstringResponse{
    Map<String, dynamic> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    CEDictionaryOfstringAndstringResponse(
		Map<String, dynamic> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static CEDictionaryOfstringAndstringResponse fromJson(Map<String, dynamic> data){
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
		List<CEDictionaryOfstringAndstringResponse> list = new List();
    data.forEach((item) {
      list.add(CEDictionaryOfstringAndstringResponse.fromJson(item));
    });
    return list;
	}
}