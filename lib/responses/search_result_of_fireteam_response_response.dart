import '../models/search_result_of_fireteam_response.dart';
class SearchResultOfFireteamResponseResponse{
    SearchResultOfFireteamResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SearchResultOfFireteamResponseResponse(
		SearchResultOfFireteamResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfFireteamResponseResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<SearchResultOfFireteamResponseResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfFireteamResponseResponse.fromJson(item));
    });
    return list;
	}
}