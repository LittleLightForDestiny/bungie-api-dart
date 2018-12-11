import '../models/destiny_leaderboard.dart';
class DestinyLeaderboardResultsResponse{
    Map<Map<DestinyLeaderboard, dynamic>, dynamic> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyLeaderboardResultsResponse(
		Map<Map<DestinyLeaderboard, dynamic>, dynamic> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyLeaderboardResultsResponse fromJson(Map<String, dynamic> data){
		return new DestinyLeaderboardResultsResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyLeaderboardResultsResponse> fromList(List<dynamic> data){
		List<DestinyLeaderboardResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboardResultsResponse.fromJson(item));
    });
    return list;
	}
}