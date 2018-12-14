import '../models/search_result_of_group_member_application.dart';
class SearchResultOfGroupMemberApplicationResponse{
    SearchResultOfGroupMemberApplication response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SearchResultOfGroupMemberApplicationResponse(
		SearchResultOfGroupMemberApplication this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfGroupMemberApplicationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfGroupMemberApplicationResponse(
				data['Response'] != null ? SearchResultOfGroupMemberApplication.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfGroupMemberApplicationResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupMemberApplicationResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMemberApplicationResponse.fromMap(item));
    });
    return list;
	}
}