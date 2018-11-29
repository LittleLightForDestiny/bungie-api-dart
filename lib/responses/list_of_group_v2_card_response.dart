import '../models/group_v2_card.dart';
class ListOfGroupV2CardResponse{
    List<GroupV2Card> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ListOfGroupV2CardResponse(
		List<GroupV2Card> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ListOfGroupV2CardResponse fromJson(Map<String, dynamic> data){
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
		List<ListOfGroupV2CardResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfGroupV2CardResponse.fromJson(item));
    });
    return list;
	}
}