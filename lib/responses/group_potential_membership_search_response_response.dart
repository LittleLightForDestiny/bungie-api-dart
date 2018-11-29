import '../models/group_potential_membership_search_response.dart';
class GroupPotentialMembershipSearchResponseResponse{
    GroupPotentialMembershipSearchResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GroupPotentialMembershipSearchResponseResponse(
		GroupPotentialMembershipSearchResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static GroupPotentialMembershipSearchResponseResponse fromJson(Map<String, dynamic> data){
		return new GroupPotentialMembershipSearchResponseResponse(
				GroupPotentialMembershipSearchResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupPotentialMembershipSearchResponseResponse> fromList(List<dynamic> data){
		List<GroupPotentialMembershipSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupPotentialMembershipSearchResponseResponse.fromJson(item));
    });
    return list;
	}
}