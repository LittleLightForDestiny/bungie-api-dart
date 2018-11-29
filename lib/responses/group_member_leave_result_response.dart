import '../models/group_member_leave_result.dart';
class GroupMemberLeaveResultResponse{
    GroupMemberLeaveResult Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GroupMemberLeaveResultResponse(
		GroupMemberLeaveResult this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static GroupMemberLeaveResultResponse fromJson(Map<String, dynamic> data){
		return new GroupMemberLeaveResultResponse(
				GroupMemberLeaveResult.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupMemberLeaveResultResponse> fromList(List<dynamic> data){
		List<GroupMemberLeaveResultResponse> list = new List();
    data.forEach((item) {
      list.add(GroupMemberLeaveResultResponse.fromJson(item));
    });
    return list;
	}
}