import '../models/destiny_aggregate_activity_results.dart';
class DestinyAggregateActivityResultsResponse{
    DestinyAggregateActivityResults response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyAggregateActivityResultsResponse(
		DestinyAggregateActivityResults this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyAggregateActivityResultsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyAggregateActivityResultsResponse(
				data['Response'] != null ? DestinyAggregateActivityResults.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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