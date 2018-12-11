import '../models/destiny_linked_profiles_response.dart';
class DestinyLinkedProfilesResponseResponse{
    DestinyLinkedProfilesResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyLinkedProfilesResponseResponse(
		DestinyLinkedProfilesResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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