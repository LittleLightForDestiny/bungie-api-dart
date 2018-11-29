import '../models/destiny_historical_stats_account_result.dart';
class DestinyHistoricalStatsAccountResultResponse{
    DestinyHistoricalStatsAccountResult Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyHistoricalStatsAccountResultResponse(
		DestinyHistoricalStatsAccountResult this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyHistoricalStatsAccountResultResponse fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalStatsAccountResultResponse(
				DestinyHistoricalStatsAccountResult.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyHistoricalStatsAccountResultResponse> fromList(List<dynamic> data){
		List<DestinyHistoricalStatsAccountResultResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsAccountResultResponse.fromJson(item));
    });
    return list;
	}
}