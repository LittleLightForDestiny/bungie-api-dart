import '../models/destiny_leaderboard.dart';
class DestinyLeaderboardResultsResponse{
    Map<String, Map<String, DestinyLeaderboard>> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyLeaderboardResultsResponse(
		Map<String, Map<String, DestinyLeaderboard>> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyLeaderboardResultsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLeaderboardResultsResponse(
				data['Response'] != null ? Map<String, Map<String, DestinyLeaderboard>>.from(data['Response'].map((k, v)=>MapEntry(k, Map<String, DestinyLeaderboard>.from(v.map((k, v)=>MapEntry(k, DestinyLeaderboard.fromMap(v))))))) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyLeaderboardResultsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLeaderboardResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboardResultsResponse.fromMap(item));
    });
    return list;
	}
}