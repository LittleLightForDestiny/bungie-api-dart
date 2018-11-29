import '../models/destiny_entity_search_result.dart';
class DestinyEntitySearchResultResponse{
    DestinyEntitySearchResult Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyEntitySearchResultResponse(
		DestinyEntitySearchResult this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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