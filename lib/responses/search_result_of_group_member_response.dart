import '../models/search_result_of_group_member.dart';
class SearchResultOfGroupMemberResponse{
    SearchResultOfGroupMember response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SearchResultOfGroupMemberResponse(
		SearchResultOfGroupMember this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfGroupMemberResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfGroupMemberResponse(
				SearchResultOfGroupMember.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfGroupMemberResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupMemberResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMemberResponse.fromJson(item));
    });
    return list;
	}
}