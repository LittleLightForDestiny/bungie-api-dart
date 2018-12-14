import '../models/destiny_historical_weapon_stats_data.dart';
class DestinyHistoricalWeaponStatsDataResponse{
    DestinyHistoricalWeaponStatsData response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyHistoricalWeaponStatsDataResponse(
		DestinyHistoricalWeaponStatsData this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyHistoricalWeaponStatsDataResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalWeaponStatsDataResponse(
				data['Response'] != null ? DestinyHistoricalWeaponStatsData.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyHistoricalWeaponStatsDataResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalWeaponStatsDataResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalWeaponStatsDataResponse.fromMap(item));
    });
    return list;
	}
}