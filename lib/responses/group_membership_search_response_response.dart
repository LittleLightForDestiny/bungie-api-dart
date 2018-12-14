import '../models/group_membership_search_response.dart';
class GroupMembershipSearchResponseResponse{
    GroupMembershipSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    GroupMembershipSearchResponseResponse(
		GroupMembershipSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupMembershipSearchResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMembershipSearchResponseResponse(
				data['Response'] != null ? GroupMembershipSearchResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupMembershipSearchResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMembershipSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupMembershipSearchResponseResponse.fromMap(item));
    });
    return list;
	}
}