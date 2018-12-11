import '../models/destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsResultsResponse{
    Map<DestinyHistoricalStatsByPeriod, dynamic> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyHistoricalStatsResultsResponse(
		Map<DestinyHistoricalStatsByPeriod, dynamic> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyHistoricalStatsResultsResponse fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalStatsResultsResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyHistoricalStatsResultsResponse> fromList(List<dynamic> data){
		List<DestinyHistoricalStatsResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsResultsResponse.fromJson(item));
    });
    return list;
	}
}