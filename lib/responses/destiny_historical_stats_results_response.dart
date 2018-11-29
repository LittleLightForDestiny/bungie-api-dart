import '../models/destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsResultsResponse{
    Map<DestinyHistoricalStatsByPeriod, dynamic> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyHistoricalStatsResultsResponse(
		Map<DestinyHistoricalStatsByPeriod, dynamic> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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