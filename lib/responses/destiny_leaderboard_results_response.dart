import '../models/destiny_leaderboard.dart';
class DestinyLeaderboardResultsResponse{
    Map<Map<DestinyLeaderboard, dynamic>, dynamic> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyLeaderboardResultsResponse(
		Map<Map<DestinyLeaderboard, dynamic>, dynamic> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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