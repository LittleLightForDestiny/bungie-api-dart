import '../models/destiny_item_change_response.dart';
class DestinyItemChangeResponseResponse{
    DestinyItemChangeResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyItemChangeResponseResponse(
		DestinyItemChangeResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyItemChangeResponseResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyItemChangeResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemChangeResponseResponse.fromJson(item));
    });
    return list;
	}
}