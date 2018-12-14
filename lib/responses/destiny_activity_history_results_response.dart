import '../models/destiny_activity_history_results.dart';
class DestinyActivityHistoryResultsResponse{
    DestinyActivityHistoryResults response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyActivityHistoryResultsResponse(
		DestinyActivityHistoryResults this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyActivityHistoryResultsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityHistoryResultsResponse(
				data['Response'] != null ? DestinyActivityHistoryResults.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyActivityHistoryResultsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityHistoryResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityHistoryResultsResponse.fromMap(item));
    });
    return list;
	}
}