import '../models/destiny_item_change_response.dart';
class DestinyItemChangeResponseResponse{
    DestinyItemChangeResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyItemChangeResponseResponse(
		DestinyItemChangeResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyItemChangeResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyItemChangeResponseResponse(
				DestinyItemChangeResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyItemChangeResponseResponse> fromList(List<dynamic> data){
		List<DestinyItemChangeResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemChangeResponseResponse.fromJson(item));
    });
    return list;
	}
}