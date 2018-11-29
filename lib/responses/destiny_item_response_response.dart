import '../models/destiny_item_response.dart';
class DestinyItemResponseResponse{
    DestinyItemResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyItemResponseResponse(
		DestinyItemResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyItemResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyItemResponseResponse(
				DestinyItemResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyItemResponseResponse> fromList(List<dynamic> data){
		List<DestinyItemResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemResponseResponse.fromJson(item));
    });
    return list;
	}
}