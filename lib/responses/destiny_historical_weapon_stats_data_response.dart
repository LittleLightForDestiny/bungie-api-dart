import '../models/destiny_historical_weapon_stats_data.dart';
class DestinyHistoricalWeaponStatsDataResponse{
    DestinyHistoricalWeaponStatsData Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyHistoricalWeaponStatsDataResponse(
		DestinyHistoricalWeaponStatsData this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyHistoricalWeaponStatsDataResponse fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalWeaponStatsDataResponse(
				DestinyHistoricalWeaponStatsData.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyHistoricalWeaponStatsDataResponse> fromList(List<dynamic> data){
		List<DestinyHistoricalWeaponStatsDataResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalWeaponStatsDataResponse.fromJson(item));
    });
    return list;
	}
}