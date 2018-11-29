import '../models/group_membership_search_response.dart';
class GroupMembershipSearchResponseResponse{
    GroupMembershipSearchResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GroupMembershipSearchResponseResponse(
		GroupMembershipSearchResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static GroupMembershipSearchResponseResponse fromJson(Map<String, dynamic> data){
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
		List<GroupMembershipSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupMembershipSearchResponseResponse.fromJson(item));
    });
    return list;
	}
}