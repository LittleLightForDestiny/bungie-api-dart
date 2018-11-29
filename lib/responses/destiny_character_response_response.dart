import '../models/destiny_character_response.dart';
class DestinyCharacterResponseResponse{
    DestinyCharacterResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyCharacterResponseResponse(
		DestinyCharacterResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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