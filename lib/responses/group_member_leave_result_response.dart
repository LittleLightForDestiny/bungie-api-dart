import '../models/group_member_leave_result.dart';
class GroupMemberLeaveResultResponse{
    GroupMemberLeaveResult response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GroupMemberLeaveResultResponse(
		GroupMemberLeaveResult this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupMemberLeaveResultResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMemberLeaveResultResponse(
				GroupMemberLeaveResult.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupMemberLeaveResultResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMemberLeaveResultResponse> list = new List();
    data.forEach((item) {
      list.add(GroupMemberLeaveResultResponse.fromMap(item));
    });
    return list;
	}
}