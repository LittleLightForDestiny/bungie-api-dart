import '../models/group_membership_search_response.dart';
class GroupMembershipSearchResponseResponse{
    GroupMembershipSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GroupMembershipSearchResponseResponse(
		GroupMembershipSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupMembershipSearchResponseResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMembershipSearchResponseResponse(
				GroupMembershipSearchResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupMembershipSearchResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMembershipSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupMembershipSearchResponseResponse.fromJson(item));
    });
    return list;
	}
}