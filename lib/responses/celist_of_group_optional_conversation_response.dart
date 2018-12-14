import '../models/group_optional_conversation.dart';
class CEListOfGroupOptionalConversationResponse{
    List<GroupOptionalConversation> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    CEListOfGroupOptionalConversationResponse(
		List<GroupOptionalConversation> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEListOfGroupOptionalConversationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CEListOfGroupOptionalConversationResponse(
				data['Response'] != null ? GroupOptionalConversation.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfGroupOptionalConversationResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CEListOfGroupOptionalConversationResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfGroupOptionalConversationResponse.fromMap(item));
    });
    return list;
	}
}