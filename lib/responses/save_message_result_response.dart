import '../models/save_message_result.dart';
class SaveMessageResultResponse{
    SaveMessageResult response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SaveMessageResultResponse(
		SaveMessageResult this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static SaveMessageResultResponse fromJson(Map<String, dynamic> data){
		return new SaveMessageResultResponse(
				SaveMessageResult.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SaveMessageResultResponse> fromList(List<dynamic> data){
		List<SaveMessageResultResponse> list = new List();
    data.forEach((item) {
      list.add(SaveMessageResultResponse.fromJson(item));
    });
    return list;
	}
}