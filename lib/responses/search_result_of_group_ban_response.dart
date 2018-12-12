import '../models/search_result_of_group_ban.dart';
class SearchResultOfGroupBanResponse{
    SearchResultOfGroupBan response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SearchResultOfGroupBanResponse(
		SearchResultOfGroupBan this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfGroupBanResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfGroupBanResponse(
				SearchResultOfGroupBan.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfGroupBanResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupBanResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupBanResponse.fromMap(item));
    });
    return list;
	}
}