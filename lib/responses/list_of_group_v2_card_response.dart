import '../models/group_v2_card.dart';
class ListOfGroupV2CardResponse{
    List<GroupV2Card> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ListOfGroupV2CardResponse(
		List<GroupV2Card> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfGroupV2CardResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfGroupV2CardResponse(
				data['Response'] != null ? GroupV2Card.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfGroupV2CardResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfGroupV2CardResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfGroupV2CardResponse.fromMap(item));
    });
    return list;
	}
}