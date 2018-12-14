import '../models/search_result_of_fireteam_response.dart';
class SearchResultOfFireteamResponseResponse{
    SearchResultOfFireteamResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SearchResultOfFireteamResponseResponse(
		SearchResultOfFireteamResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfFireteamResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfFireteamResponseResponse(
				data['Response'] != null ? SearchResultOfFireteamResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfFireteamResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfFireteamResponseResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfFireteamResponseResponse.fromMap(item));
    });
    return list;
	}
}