import '../models/destiny_profile_response.dart';
class DestinyProfileResponseResponse{
    DestinyProfileResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyProfileResponseResponse(
		DestinyProfileResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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