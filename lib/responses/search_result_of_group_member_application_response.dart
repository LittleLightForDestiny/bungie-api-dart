import '../models/search_result_of_group_member_application.dart';
class SearchResultOfGroupMemberApplicationResponse{
    SearchResultOfGroupMemberApplication Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfGroupMemberApplicationResponse(
		SearchResultOfGroupMemberApplication this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfGroupMemberApplicationResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupMemberApplicationResponse(
				SearchResultOfGroupMemberApplication.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfGroupMemberApplicationResponse> fromList(List<dynamic> data){
		List<SearchResultOfGroupMemberApplicationResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMemberApplicationResponse.fromJson(item));
    });
    return list;
	}
}