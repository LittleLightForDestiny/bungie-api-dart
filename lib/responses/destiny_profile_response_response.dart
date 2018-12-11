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

    static DestinyProfileResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyProfileResponseResponse(
				DestinyProfileResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyProfileResponseResponse> fromList(List<dynamic> data){
		List<DestinyProfileResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileResponseResponse.fromJson(item));
    });
    return list;
	}
}