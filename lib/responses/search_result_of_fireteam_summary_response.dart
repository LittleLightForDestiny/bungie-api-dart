import '../models/search_result_of_fireteam_summary.dart';
class SearchResultOfFireteamSummaryResponse{
    SearchResultOfFireteamSummary Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfFireteamSummaryResponse(
		SearchResultOfFireteamSummary this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfFireteamSummaryResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfFireteamSummaryResponse(
				SearchResultOfFireteamSummary.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfFireteamSummaryResponse> fromList(List<dynamic> data){
		List<SearchResultOfFireteamSummaryResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfFireteamSummaryResponse.fromJson(item));
    });
    return list;
	}
}