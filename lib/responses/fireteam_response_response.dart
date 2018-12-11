import '../models/fireteam_response.dart';
class FireteamResponseResponse{
    FireteamResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    FireteamResponseResponse(
		FireteamResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static FireteamResponseResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamResponseResponse(
				FireteamResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<FireteamResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<FireteamResponseResponse> list = new List();
    data.forEach((item) {
      list.add(FireteamResponseResponse.fromJson(item));
    });
    return list;
	}
}