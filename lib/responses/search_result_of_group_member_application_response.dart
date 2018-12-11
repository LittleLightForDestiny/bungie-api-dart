import '../models/search_result_of_group_member_application.dart';
class SearchResultOfGroupMemberApplicationResponse{
    SearchResultOfGroupMemberApplication response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SearchResultOfGroupMemberApplicationResponse(
		SearchResultOfGroupMemberApplication this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfGroupMemberApplicationResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupMemberApplicationResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMemberApplicationResponse.fromJson(item));
    });
    return list;
	}
}