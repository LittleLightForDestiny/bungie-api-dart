import '../models/destiny_aggregate_activity_results.dart';
class DestinyAggregateActivityResultsResponse{
    DestinyAggregateActivityResults Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyAggregateActivityResultsResponse(
		DestinyAggregateActivityResults this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyAggregateActivityResultsResponse fromJson(Map<String, dynamic> data){
		return new DestinyAggregateActivityResultsResponse(
				DestinyAggregateActivityResults.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyAggregateActivityResultsResponse> fromList(List<dynamic> data){
		List<DestinyAggregateActivityResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyAggregateActivityResultsResponse.fromJson(item));
    });
    return list;
	}
}