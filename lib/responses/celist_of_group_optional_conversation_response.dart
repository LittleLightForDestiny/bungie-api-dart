import '../models/group_optional_conversation.dart';
class CEListOfGroupOptionalConversationResponse{
    List<GroupOptionalConversation> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    CEListOfGroupOptionalConversationResponse(
		List<GroupOptionalConversation> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEListOfGroupOptionalConversationResponse fromJson(Map<String, dynamic> data){
		return new CEListOfGroupOptionalConversationResponse(
				GroupOptionalConversation.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfGroupOptionalConversationResponse> fromList(List<dynamic> data){
		List<CEListOfGroupOptionalConversationResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfGroupOptionalConversationResponse.fromJson(item));
    });
    return list;
	}
}