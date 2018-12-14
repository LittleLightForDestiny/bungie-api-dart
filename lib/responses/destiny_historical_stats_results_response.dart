import '../models/destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsResultsResponse{
    Map<String, DestinyHistoricalStatsByPeriod> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyHistoricalStatsResultsResponse(
		Map<String, DestinyHistoricalStatsByPeriod> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyHistoricalStatsResultsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsResultsResponse(
				data['Response'] != null ? Map<String, DestinyHistoricalStatsByPeriod>.from(data['Response'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsByPeriod.fromMap(v)))) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyHistoricalStatsResultsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsResultsResponse.fromMap(item));
    });
    return list;
	}
}