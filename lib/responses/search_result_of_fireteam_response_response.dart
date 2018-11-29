import '../models/search_result_of_fireteam_response.dart';
class SearchResultOfFireteamResponseResponse{
    SearchResultOfFireteamResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfFireteamResponseResponse(
		SearchResultOfFireteamResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfFireteamResponseResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfFireteamResponseResponse(
				SearchResultOfFireteamResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfFireteamResponseResponse> fromList(List<dynamic> data){
		List<SearchResultOfFireteamResponseResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfFireteamResponseResponse.fromJson(item));
    });
    return list;
	}
}