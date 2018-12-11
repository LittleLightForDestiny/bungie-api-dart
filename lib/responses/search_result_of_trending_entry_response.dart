import '../models/search_result_of_trending_entry.dart';
class SearchResultOfTrendingEntryResponse{
    SearchResultOfTrendingEntry response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SearchResultOfTrendingEntryResponse(
		SearchResultOfTrendingEntry this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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