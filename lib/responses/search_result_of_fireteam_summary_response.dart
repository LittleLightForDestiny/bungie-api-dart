import '../models/search_result_of_fireteam_summary.dart';
class SearchResultOfFireteamSummaryResponse{
    SearchResultOfFireteamSummary response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SearchResultOfFireteamSummaryResponse(
		SearchResultOfFireteamSummary this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfFireteamSummaryResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfFireteamSummaryResponse(
				SearchResultOfFireteamSummary.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
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