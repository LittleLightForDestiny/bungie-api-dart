import '../models/search_result_of_fireteam_summary.dart';
class SearchResultOfFireteamSummaryResponse{
    SearchResultOfFireteamSummary response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SearchResultOfFireteamSummaryResponse(
		SearchResultOfFireteamSummary this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfFireteamSummaryResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfFireteamSummaryResponse(
				data['Response'] != null ? SearchResultOfFireteamSummary.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfFireteamSummaryResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfFireteamSummaryResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfFireteamSummaryResponse.fromMap(item));
    });
    return list;
	}
}