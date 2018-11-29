import '../models/destiny_activity_history_results.dart';
class DestinyActivityHistoryResultsResponse{
    DestinyActivityHistoryResults Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyActivityHistoryResultsResponse(
		DestinyActivityHistoryResults this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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