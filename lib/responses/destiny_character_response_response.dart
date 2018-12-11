import '../models/destiny_character_response.dart';
class DestinyCharacterResponseResponse{
    DestinyCharacterResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyCharacterResponseResponse(
		DestinyCharacterResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyCharacterResponseResponse fromJson(Map<String, dynamic> data){
		return new DestinyCharacterResponseResponse(
				DestinyCharacterResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyCharacterResponseResponse> fromList(List<dynamic> data){
		List<DestinyCharacterResponseResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterResponseResponse.fromJson(item));
    });
    return list;
	}
}