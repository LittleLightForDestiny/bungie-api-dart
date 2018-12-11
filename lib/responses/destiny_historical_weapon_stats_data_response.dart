import '../models/destiny_historical_weapon_stats_data.dart';
class DestinyHistoricalWeaponStatsDataResponse{
    DestinyHistoricalWeaponStatsData response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyHistoricalWeaponStatsDataResponse(
		DestinyHistoricalWeaponStatsData this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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