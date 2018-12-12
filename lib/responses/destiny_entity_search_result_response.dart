import '../models/destiny_entity_search_result.dart';
class DestinyEntitySearchResultResponse{
    DestinyEntitySearchResult response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyEntitySearchResultResponse(
		DestinyEntitySearchResult this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyEntitySearchResultResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEntitySearchResultResponse(
				DestinyEntitySearchResult.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyEntitySearchResultResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEntitySearchResultResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyEntitySearchResultResponse.fromMap(item));
    });
    return list;
	}
}