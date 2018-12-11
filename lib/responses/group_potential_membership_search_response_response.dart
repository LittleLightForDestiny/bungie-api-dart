import '../models/group_potential_membership_search_response.dart';
class GroupPotentialMembershipSearchResponseResponse{
    GroupPotentialMembershipSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GroupPotentialMembershipSearchResponseResponse(
		GroupPotentialMembershipSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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