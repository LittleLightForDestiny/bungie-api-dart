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

    static DestinyLinkedProfilesResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLinkedProfilesResponseResponse(
				DestinyLinkedProfilesResponse.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyLinkedProfilesResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLinkedProfilesResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyLinkedProfilesResponseResponse.fromMap(item));
    });
    return list;
	}
}