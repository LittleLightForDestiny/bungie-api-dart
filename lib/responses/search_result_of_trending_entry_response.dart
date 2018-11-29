import '../models/search_result_of_trending_entry.dart';
class SearchResultOfTrendingEntryResponse{
    SearchResultOfTrendingEntry Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfTrendingEntryResponse(
		SearchResultOfTrendingEntry this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfTrendingEntryResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfTrendingEntryResponse(
				SearchResultOfTrendingEntry.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfTrendingEntryResponse> fromList(List<dynamic> data){
		List<SearchResultOfTrendingEntryResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfTrendingEntryResponse.fromJson(item));
    });
    return list;
	}
}