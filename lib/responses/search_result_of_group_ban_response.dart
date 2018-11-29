import '../models/search_result_of_group_ban.dart';
class SearchResultOfGroupBanResponse{
    SearchResultOfGroupBan Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfGroupBanResponse(
		SearchResultOfGroupBan this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfGroupBanResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupBanResponse(
				SearchResultOfGroupBan.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfGroupBanResponse> fromList(List<dynamic> data){
		List<SearchResultOfGroupBanResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupBanResponse.fromJson(item));
    });
    return list;
	}
}