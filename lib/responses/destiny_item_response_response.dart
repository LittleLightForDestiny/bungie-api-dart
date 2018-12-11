import '../models/destiny_item_response.dart';
class DestinyItemResponseResponse{
    DestinyItemResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyItemResponseResponse(
		DestinyItemResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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