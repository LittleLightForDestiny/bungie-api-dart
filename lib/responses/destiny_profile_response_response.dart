import '../models/destiny_profile_response.dart';
class DestinyProfileResponseResponse{
    DestinyProfileResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyProfileResponseResponse(
		DestinyProfileResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyProfileResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileResponseResponse(
				DestinyProfileResponse.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyProfileResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileResponseResponse.fromMap(item));
    });
    return list;
	}
}