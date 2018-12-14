import '../models/search_result_of_trending_entry.dart';
class SearchResultOfTrendingEntryResponse{
    SearchResultOfTrendingEntry response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SearchResultOfTrendingEntryResponse(
		SearchResultOfTrendingEntry this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfTrendingEntryResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfTrendingEntryResponse(
				data['Response'] != null ? SearchResultOfTrendingEntry.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfTrendingEntryResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfTrendingEntryResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfTrendingEntryResponse.fromMap(item));
    });
    return list;
	}
}