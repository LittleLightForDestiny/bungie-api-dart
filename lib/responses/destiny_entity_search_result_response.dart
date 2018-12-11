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

    static DestinyEntitySearchResultResponse fromJson(Map<String, dynamic> data){
		return new DestinyEntitySearchResultResponse(
				DestinyEntitySearchResult.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyEntitySearchResultResponse> fromList(List<dynamic> data){
		List<DestinyEntitySearchResultResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyEntitySearchResultResponse.fromJson(item));
    });
    return list;
	}
}