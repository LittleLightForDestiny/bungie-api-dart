import '../models/destiny_activity_history_results.dart';
class DestinyActivityHistoryResultsResponse{
    DestinyActivityHistoryResults response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyActivityHistoryResultsResponse(
		DestinyActivityHistoryResults this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyActivityHistoryResultsResponse fromJson(Map<String, dynamic> data){
		return new DestinyActivityHistoryResultsResponse(
				DestinyActivityHistoryResults.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyActivityHistoryResultsResponse> fromList(List<dynamic> data){
		List<DestinyActivityHistoryResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityHistoryResultsResponse.fromJson(item));
    });
    return list;
	}
}