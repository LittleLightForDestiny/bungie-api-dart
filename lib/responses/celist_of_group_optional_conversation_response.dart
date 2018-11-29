import '../models/group_optional_conversation.dart';
class CEListOfGroupOptionalConversationResponse{
    List<GroupOptionalConversation> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    CEListOfGroupOptionalConversationResponse(
		List<GroupOptionalConversation> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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