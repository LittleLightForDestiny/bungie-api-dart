import '../models/group_v2_card.dart';
class ListOfGroupV2CardResponse{
    List<GroupV2Card> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ListOfGroupV2CardResponse(
		List<GroupV2Card> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfGroupV2CardResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfGroupV2CardResponse(
				GroupV2Card.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
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