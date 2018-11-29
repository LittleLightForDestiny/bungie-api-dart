import '../models/save_message_result.dart';
class SaveMessageResultResponse{
    SaveMessageResult Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SaveMessageResultResponse(
		SaveMessageResult this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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