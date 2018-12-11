import '../models/destiny_historical_stats_account_result.dart';
class DestinyHistoricalStatsAccountResultResponse{
    DestinyHistoricalStatsAccountResult response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyHistoricalStatsAccountResultResponse(
		DestinyHistoricalStatsAccountResult this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyHistoricalStatsAccountResultResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsAccountResultResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsAccountResultResponse.fromJson(item));
    });
    return list;
	}
}