import '../models/fireteam_response.dart';
class FireteamResponseResponse{
    FireteamResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    FireteamResponseResponse(
		FireteamResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static FireteamResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamResponseResponse(
				data['Response'] != null ? FireteamResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<FireteamResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<FireteamResponseResponse> list = new List();
    data.forEach((item) {
      list.add(FireteamResponseResponse.fromMap(item));
    });
    return list;
	}
}