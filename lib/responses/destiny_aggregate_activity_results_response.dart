import '../models/destiny_aggregate_activity_results.dart';
class DestinyAggregateActivityResultsResponse{
    DestinyAggregateActivityResults response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyAggregateActivityResultsResponse(
		DestinyAggregateActivityResults this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyAggregateActivityResultsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyAggregateActivityResultsResponse(
				DestinyAggregateActivityResults.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyAggregateActivityResultsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyAggregateActivityResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyAggregateActivityResultsResponse.fromMap(item));
    });
    return list;
	}
}