import '../models/destiny_item_change_response.dart';
class DestinyItemChangeResponseResponse{
    DestinyItemChangeResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyItemChangeResponseResponse(
		DestinyItemChangeResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyItemChangeResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemChangeResponseResponse(
				data['Response'] != null ? DestinyItemChangeResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyItemChangeResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemChangeResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemChangeResponseResponse.fromMap(item));
    });
    return list;
	}
}