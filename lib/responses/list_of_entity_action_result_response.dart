import '../models/entity_action_result.dart';
class ListOfEntityActionResultResponse{
    List<EntityActionResult> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ListOfEntityActionResultResponse(
		List<EntityActionResult> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfEntityActionResultResponse fromJson(Map<String, dynamic> data){
		return new ListOfEntityActionResultResponse(
				EntityActionResult.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfEntityActionResultResponse> fromList(List<dynamic> data){
		List<ListOfEntityActionResultResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfEntityActionResultResponse.fromJson(item));
    });
    return list;
	}
}