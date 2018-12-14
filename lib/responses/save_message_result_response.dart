import '../models/save_message_result.dart';
class SaveMessageResultResponse{
    SaveMessageResult response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SaveMessageResultResponse(
		SaveMessageResult this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SaveMessageResultResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SaveMessageResultResponse(
				data['Response'] != null ? SaveMessageResult.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SaveMessageResultResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SaveMessageResultResponse> list = new List();
    data.forEach((item) {
      list.add(SaveMessageResultResponse.fromMap(item));
    });
    return list;
	}
}