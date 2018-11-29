import '../models/destiny_linked_profiles_response.dart';
class DestinyLinkedProfilesResponseResponse{
    DestinyLinkedProfilesResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyLinkedProfilesResponseResponse(
		DestinyLinkedProfilesResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyLinkedProfilesResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyLinkedProfilesResponseResponse(
				DestinyLinkedProfilesResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyLinkedProfilesResponseResponse> fromList(List<dynamic> data){
		List<DestinyLinkedProfilesResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyLinkedProfilesResponseResponse.fromJson(item));
    });
    return list;
	}
}