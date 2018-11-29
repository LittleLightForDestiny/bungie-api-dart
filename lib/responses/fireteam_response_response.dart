import '../models/fireteam_response.dart';
class FireteamResponseResponse{
    FireteamResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    FireteamResponseResponse(
		FireteamResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static FireteamResponseResponse fromJson(Map<String, dynamic> data){
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
		List<FireteamResponseResponse> list = new List();
    data.forEach((item) {
      list.add(FireteamResponseResponse.fromJson(item));
    });
    return list;
	}
}