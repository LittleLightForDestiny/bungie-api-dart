import '../models/entity_action_result.dart';
class ListOfEntityActionResultResponse{
    List<EntityActionResult> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ListOfEntityActionResultResponse(
		List<EntityActionResult> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfEntityActionResultResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfEntityActionResultResponse(
				data['Response'] != null ? EntityActionResult.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfEntityActionResultResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfEntityActionResultResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfEntityActionResultResponse.fromMap(item));
    });
    return list;
	}
}