import '../models/search_result_of_group_member.dart';
class SearchResultOfGroupMemberResponse{
    SearchResultOfGroupMember response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SearchResultOfGroupMemberResponse(
		SearchResultOfGroupMember this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfGroupMemberResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfGroupMemberResponse(
				data['Response'] != null ? SearchResultOfGroupMember.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfGroupMemberResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupMemberResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMemberResponse.fromMap(item));
    });
    return list;
	}
}